import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: diplomacy_dialog
	panel: 5
	title: "Diplomacy"
	
	NormalText {
		id: allied_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.right: enemy_label.left
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		text: "Allied"
	}
	
	NormalText {
		id: enemy_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.right: shared_vision_label.left
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		text: "Enemy"
	}
	
	NormalText {
		id: shared_vision_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		text: "Shared Vision"
	}
	
	ListView {
		id: diplomacy_list
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: allied_label.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		leftMargin: 8 * wyrmgus.defines.scale_factor
		rightMargin: 8 * wyrmgus.defines.scale_factor
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		model: filter_list(wyrmgus.non_neutral_players)
		delegate: Item {
			width: parent.width - diplomacy_list.leftMargin - diplomacy_list.rightMargin
			height: Math.max(player_label.height, shared_vision_radio_button.height)
			
			NormalText {
				id: player_label
				text: modelData.name
				anchors.left: parent.left
				anchors.verticalCenter: parent.verticalCenter
			}
			
			RadioImageButton {
				id: shared_vision_radio_button
				anchors.right: parent.right
				anchors.verticalCenter: parent.verticalCenter
				interface_style: diplomacy_dialog.interface_style
				
				onCheckedChanged: {
				}
			}
		}
		
		function filter_list(list) {
			var new_list = []
			
			for (var i = 0; i < list.length; ++i) {
				var player = list[i]
				if (player !== wyrmgus.this_player && player.active) {
					new_list.push(player)
				}
			}
			
			return new_list
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: diplomacy_dialog.interface_style
		
		onClicked: {
			diplomacy_dialog.close()
		}
	}
}
