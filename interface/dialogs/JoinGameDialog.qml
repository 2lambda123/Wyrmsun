import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: join_game_dialog
	panel: 4
	
	NormalText {
		id: description_label
		anchors.top: parent.top
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.horizontalCenter: parent.horizontalCenter
		text: qsTr("Enter server IP-address:")
	}
	
	CustomTextField {
		id: ip_text_field
		anchors.top: description_label.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		text: "localhost"
	}
	
	SmallButton {
		id: ok_button
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("OK")
		hotkey: "o"
		
		onClicked: {
			var server_address = ip_text_field.text
			
			//FIXME: allow port ("localhost:1234")
			wyrmgus.network_manager.setup_server_address(server_address)
		}
	}
	
	SmallButton {
		id: cancel_button
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Cancel")
		hotkey: "c"
		
		onClicked: {
			join_game_dialog.close()
		}
	}
	
	Connections {
		target: wyrmgus.network_manager
		
		function onServer_address_setup_completed(result) {
			if (result === false) {
				error_dialog.text = "Invalid address."
				error_dialog.open()
				join_game_connecting_dialog.close()
				return
			}
			
			wyrmgus.network_manager.init_client_connect()
			
			var server_address = ip_text_field.text
			join_game_connecting_dialog.server_address = server_address
			join_game_connecting_dialog.open()
		}
	}
}
