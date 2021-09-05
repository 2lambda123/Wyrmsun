import QtQuick 2.12
import QtQuick.Controls 2.12
import frame_buffer_object 1.0
import map_grid_model 1.0
import unit_list_model 1.0
import "./dialogs"

Item {
	id: map_view
	anchors.fill: parent
	focus: wyrmgus.game.running && menu_stack === null
	z: 2 //place it over the frame buffer object
	
	property var menu_stack: null
	property var popups: []
	property int active_popup_count: 0
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
		hoverEnabled: true
		acceptedButtons: Qt.AllButtons
	}
	
	/*
	Rectangle {
		anchors.fill: parent
		color: "black"
	}
	*/
	
	/*
	TableView {
		id: map
		anchors.fill: parent
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		contentWidth: tile_size * map_width
		contentHeight: tile_size * map_height
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		model: MapGridModel {
			map_layer: 0
		}
		delegate: TileView {}
		
		Repeater {
			model: UnitListModel {
				map_layer: 0
			}
			
			UnitView {
			}
		}
	}
	*/
	
	/*
	TopBar {
		anchors.top: parent.top
		anchors.left: parent.left
		anchors.right: parent.right
	}
	*/
	
	ThinnestButton {
		id: menu_button
		anchors.left: parent.left
		anchors.leftMargin: 26 * wyrmgus.defines.scale_factor
		anchors.top: parent.top
		anchors.topMargin: 1 * wyrmgus.defines.scale_factor
		text: "Menu (F10)"
		hotkey: "f10"
		interface_style: wyrmgus.current_interface_style.identifier
		
		onClicked: {
			if (wyrmgus.map_editor.running) {
				wyrmgus.call_lua_command("RunInEditorMenu();")
			} else {
				game_menu_dialog.open()
			}
		}
	}
	
	GameMenuDialog {
		id: game_menu_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	OptionsDialog {
		id: options_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	SoundOptionsDialog {
		id: sound_options_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	HelpDialog {
		id: help_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	LoadGameDialog {
		id: load_game_dialog
	
		onVisibleChanged: {
			if (visible) {
				map_view.on_popup_opened()
			} else {
				map_view.on_popup_closed()
				
				if (game_menu_dialog.visible) {
					game_menu_dialog.close()
				}
			}
		}
	}
	
	EndMissionDialog {
		id: end_mission_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	ConfirmDialog {
		id: restart_mission_confirm_dialog
		interface_style: wyrmgus.current_interface_style.identifier
		
		onConfirmed: {
			wyrmgus.call_lua_command("StopGame(GameRestart);")
			end_mission_dialog.close()
			game_menu_dialog.close()
		}
	}
	
	ConfirmDialog {
		id: quit_mission_confirm_dialog
		interface_style: wyrmgus.current_interface_style.identifier
		
		onConfirmed: {
			wyrmgus.call_lua_command("StopGame(GameQuitToMenu); CEditor:get():set_running(false);")
			end_mission_dialog.close()
			game_menu_dialog.close()
		}
	}
	
	Keys.onPressed: {
		for (var i = (map_view.popups.length - 1); i >= 0; --i) {
			var popup = map_view.popups[i]
			if (!popup.visible) {
				continue
			}
			
			if (popup.on_pressed_key) {
				popup.on_pressed_key(event)
			}
			
			return
		}
		
		for (var i = 0; i < map_view.children.length; ++i) {
			var child_element = map_view.children[i]
			if (child_element.on_pressed_key) {
				child_element.on_pressed_key(event)
				if (event.accepted) {
					return
				}
			}
		}
	}
	
	Keys.onReleased: {
		for (var i = (map_view.popups.length - 1); i >= 0; --i) {
			var popup = map_view.popups[i]
			if (!popup.visible) {
				continue
			}
			
			if (popup.on_released_key) {
				popup.on_released_key(event)
			}
			
			return
		}
		
		for (var i = 0; i < map_view.children.length; ++i) {
			var child_element = map_view.children[i]
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					return
				}
			}
		}
		
		if (!wyrmgus.map_editor.running) {
			switch (event.key) {
				case Qt.Key_H:
					if ((event.modifiers & Qt.ControlModifier) || (event.modifiers & Qt.AltModifier)) {
						help_dialog.open()
					}
					break
				case Qt.Key_L:
					if (event.modifiers & Qt.AltModifier) {
						load_game_dialog.open()
					}
					break
				case Qt.Key_Q:
					if ((event.modifiers & Qt.ControlModifier) || (event.modifiers & Qt.AltModifier)) {
						quit_mission_confirm_dialog.open()
					}
					break
				case Qt.Key_R:
					if ((event.modifiers & Qt.ControlModifier) || (event.modifiers & Qt.AltModifier)) {
						if (!wyrmgus.game.multiplayer) {
							restart_mission_confirm_dialog.open()
						}
					}
					break
				case Qt.Key_F1:
					help_dialog.open()
					break
				case Qt.Key_F5:
					options_dialog.open()
					break
				case Qt.Key_F7:
					sound_options_dialog.open()
					break
				default:
					break
			}
		}
	}
	
	Connections {
		target: wyrmgus
		onEncyclopediaEntryOpened: {
			map_view.create_menu(["menus/EncyclopediaEntryMenu.qml", {
				entry: wyrmgus.get_link_target(link)
			}])
		}
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(mouse_area)
		wyrmgus.install_event_filter_on(map_view)
		wyrmgus.on_map_view_created()
	}
	
	function create_menu(menu_array) {
		var menu_stack_component = Qt.createComponent("menus/MenuStack.qml")
		
		if (menu_stack_component.status == Component.Error) {
			console.error(menu_stack_component.errorString())
			return
		}
		
		map_view.menu_stack = menu_stack_component.createObject(map_view, { focus: true })
		map_view.menu_stack.push(menu_array)
		increment_active_popup_count()
	}
	
	function on_menu_stack_destroyed() {
		map_view.menu_stack = null
		decrement_active_popup_count()
	}
	
	function increment_active_popup_count() {
		++map_view.active_popup_count
		
		if (map_view.active_popup_count == 1 && !wyrmgus.map_editor.running) {
			wyrmgus.call_lua_command("if (not IsNetworkGame()) then SetGamePaused(true); end")
			wyrmgus.game.on_modal_dialog_opened()
		}
	}
	
	function decrement_active_popup_count() {
		--map_view.active_popup_count
		
		if (map_view.active_popup_count == 0 && !wyrmgus.map_editor.running) {
			wyrmgus.call_lua_command("if (not IsNetworkGame()) then SetGamePaused(false); end")
			wyrmgus.game.on_modal_dialog_closed()
		}
	}
	
	function on_popup_opened() {
		increment_active_popup_count()
	}
	
	function on_popup_closed() {
		decrement_active_popup_count()
	}
}
