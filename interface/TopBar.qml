import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: top_bar
	height: image.height
	
	property string interface_style: "default"
	
	Image {
		id: image
		anchors.left: parent.left
		source: "image://interface/" + interface_style + "/top_bar"
		fillMode: Image.PreserveAspectCrop
		cache: false
		clip: true
	}
	
	ThinnestButton {
		id: menu_button
		anchors.left: parent.left
		anchors.leftMargin: 26 * wyrmgus.scale_factor
		anchors.top: parent.top
		anchors.topMargin: 1 * wyrmgus.scale_factor
		text: "Menu (F10)"
		hotkey: "f10"
		interface_style: parent.interface_style
		
		onClicked: {
			if (wyrmgus.map_editor.running) {
				wyrmgus.call_lua_command("RunInEditorMenu();")
			} else {
				game_menu_dialog.open()
			}
		}
	}
	
	Repeater {
		model: wyrmgus.main_resources
		
		Item {
			id: resource_item
			anchors.left: top_bar.left
			anchors.leftMargin: (154 + (75 * index)) * wyrmgus.scale_factor
			anchors.top: top_bar.top
			width: resource_label.x + resource_label.width
			height: resource_icon.height
			visible: !wyrmgus.map_editor.running
			ToolTip.visible: resource_mouse_area.containsMouse && tooltip.length > 0
			ToolTip.delay: 1000
			ToolTip.text: tooltip
			
			property int resource_stored: wyrmgus.this_player.get_resource_sync(model.modelData)
			readonly property string conversion_rates_string: model.modelData.conversion_rates_string
			property string tooltip: format_text(model.modelData.name + "\n\n" + small_text("Stored: " + resource_stored + (conversion_rates_string.length > 0 ? "\n" : "") + conversion_rates_string))
			
			MouseArea {
				id: resource_mouse_area
				anchors.fill: resource_item
				hoverEnabled: true
				onEntered: {
					//display the tooltip further down so that the cursor isn't on top of it
					tooltip_manager.tooltip_y_override = 40 * wyrmgus.scale_factor
				}
				onExited: {
					tooltip_manager.tooltip_y_override = 0
				}
			}
			
			Image {
				id: resource_icon
				anchors.left: parent.left
				anchors.top: parent.top
				source: "image://resource_icon/" + model.modelData.icon.identifier
				cache: false
			}
			
			SmallText {
				id: resource_label
				anchors.left: resource_icon.right
				anchors.leftMargin: 4 * wyrmgus.scale_factor
				anchors.top: parent.top
				anchors.topMargin: 1 * wyrmgus.scale_factor
				text: number_string(resource_item.resource_stored)
				
			}
			
			Connections {
				target: wyrmgus.this_player
				
				function onResource_stored_changed(resource_index, amount) {
					if (resource_index == model.modelData.index) {
						resource_item.resource_stored = amount
					}
				}
			}
		}
	}
	
	Repeater {
		model: wyrmgus.this_player.current_special_resources
		
		Image {
			id: resource_icon
			anchors.left: top_bar.left
			anchors.leftMargin: (154 + (75 * 3) + (Math.min(18, 72 / wyrmgus.this_player.current_special_resources.length) * index)) * wyrmgus.scale_factor
			anchors.top: top_bar.top
			source: "image://resource_icon/" + model.modelData.icon.identifier
			cache: false
			visible: !wyrmgus.map_editor.running
		}
	}
	
	function on_released_key(event) {
		for (var i = 0; i < top_bar.children.length; ++i) {
			var child_element = top_bar.children[i]
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					return
				}
			}
		}
	}
}
