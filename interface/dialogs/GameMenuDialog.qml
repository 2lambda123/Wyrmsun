import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: game_menu_dialog
	panel: 1
	title: "Game Menu"
	
	LargeButton {
		id: options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "Options (F5)"
		hotkey: "f5"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			options_dialog.open()
			game_menu_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: help_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: options_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Help (F1)"
		hotkey: "f1"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunHelpMenu();")
			game_menu_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: save_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: help_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Save (F11)"
		hotkey: "f11"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunSaveMenu();")
			game_menu_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: load_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: save_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Load (F12)"
		hotkey: "f12"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunGameLoadGameMenu();")
			game_menu_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: end_scenario_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: load_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "End Mission"
		hotkey: "e"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunEndScenarioMenu();")
			game_menu_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: return_to_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: end_scenario_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Return to Game (Esc)"
		hotkey: "esc"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			game_menu_dialog.close()
		}
	}
}
