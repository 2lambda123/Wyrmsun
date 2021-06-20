import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: gameplay_options_menu
	title: "Gameplay Options"
	
	NormalText {
		id: hotkey_setup_label
		text: "Hotkey Setup:"
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: hotkey_setup_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: hotkey_setup_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: ok_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		width: 250 * wyrmgus.defines.scale_factor
		model: wyrmgus.get_hotkey_setups()
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.get_hotkey_setup_index())
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.get_hotkey_setup_index() !== selectedEntry) {
				wyrmgus.preferences.set_hotkey_setup_index(selectedEntry)
				wyrmgus.preferences.save()
			}
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_hotkey_setup_name(entry)
		}
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "OK"
		hotkey: "o"
		lua_command: "SavePreferences(); gameplay_options_menu:stop();"
		
		onClicked: {
			menu_stack.pop()
		}
	}
}
