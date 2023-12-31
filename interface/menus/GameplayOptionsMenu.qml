import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: gameplay_options_menu
	title: qsTr("Gameplay Options")
	
	NormalText {
		id: translation_label
		text: qsTr("Translation") + ":"
		anchors.left: translation_dropdown.left
		anchors.bottom: translation_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		visible: translation_dropdown.visible
	}
	
	Dropdown {
		id: translation_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: hotkey_setup_label.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		width: 250 * wyrmgus.scale_factor
		model: [""].concat(wyrmgus.defines.get_translation_locales_qstring_list())
		visible: model.length > 1 || wyrmgus.preferences.locale !== ""
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.locale)
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.locale !== selectedEntry) {
				wyrmgus.preferences.locale = selectedEntry
			}
		}
		
		function get_entry_name(entry) {
			if (entry === "") {
				return qsTr("None")
			}
			
			return qsTr(wyrmgus.defines.get_translation_name_qstring(entry))
		}
	}
	
	NormalText {
		id: hotkey_setup_label
		text: qsTr("Hotkey Setup") + ":"
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: hotkey_setup_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: hotkey_setup_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: autosave_radio_button.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		width: 250 * wyrmgus.scale_factor
		model: wyrmgus.get_hotkey_setups()
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.get_hotkey_setup_index())
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.get_hotkey_setup_index() !== selectedEntry) {
				wyrmgus.preferences.set_hotkey_setup_index(selectedEntry)
			}
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_hotkey_setup_name(entry)
		}
	}
	
	LabeledRadioImageButton {
		id: autosave_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: time_of_day_shading_radio_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Autosave")
		checked: wyrmgus.preferences.autosave
		
		onCheckedChanged: {
			wyrmgus.preferences.autosave = checked
		}
	}
	
	LabeledRadioImageButton {
		id: time_of_day_shading_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: show_hero_symbol_radio_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Enable Time of Day Shading")
		checked: wyrmgus.preferences.time_of_day_shading
		
		onCheckedChanged: {
			wyrmgus.preferences.time_of_day_shading = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_hero_symbol_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: show_hp_bar_radio_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Show Hero Symbol")
		checked: wyrmgus.preferences.hero_symbol
		
		onCheckedChanged: {
			wyrmgus.preferences.hero_symbol = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_hp_bar_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.verticalCenter: parent.verticalCenter
		text: qsTr("Show HP Bar")
		checked: wyrmgus.preferences.hp_bar
		
		onCheckedChanged: {
			wyrmgus.preferences.hp_bar = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_messages_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_hp_bar_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Show Messages")
		checked: wyrmgus.preferences.show_messages
		
		onCheckedChanged: {
			wyrmgus.preferences.show_messages = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_pathlines_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_messages_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Show Pathlines")
		checked: wyrmgus.preferences.pathlines
		
		onCheckedChanged: {
			wyrmgus.preferences.pathlines = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_player_color_circle_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_pathlines_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Show Player Color Circle")
		checked: wyrmgus.preferences.player_color_circle
		
		onCheckedChanged: {
			wyrmgus.preferences.player_color_circle = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_resource_bar_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_player_color_circle_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Show Resource Bar")
		checked: wyrmgus.preferences.resource_bar
		
		onCheckedChanged: {
			wyrmgus.preferences.resource_bar = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_tips_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_resource_bar_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Show Tips")
		checked: wyrmgus.preferences.show_tips
		
		onCheckedChanged: {
			wyrmgus.preferences.show_tips = checked
		}
	}
	
	LabeledRadioImageButton {
		id: show_water_borders_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_tips_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Show Water Borders")
		checked: wyrmgus.preferences.show_water_borders
		
		onCheckedChanged: {
			wyrmgus.preferences.show_water_borders = checked
		}
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: show_water_borders_radio_button.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("OK")
		hotkey: "o"
		
		onClicked: {
			wyrmgus.preferences.save()
			menu_stack.pop()
		}
	}
}
