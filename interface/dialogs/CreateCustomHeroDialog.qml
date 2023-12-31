import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: create_custom_hero_dialog
	panel: 5
	title: qsTr("Create Custom Hero")
	
	readonly property var civilization: civilization_dropdown.selectedEntry
	readonly property var unit_type: unit_type_dropdown.selectedEntry
	readonly property var trait: trait_dropdown.selectedEntry
	readonly property var hair_color_tag: hair_color_dropdown.selectedEntry
	readonly property var hair_color_tag_identifier: hair_color_tag !== null ? hair_color_tag.identifier : ""
	
	onCivilizationChanged: {
		if (civilization !== null) {
			name_text_field.text = civilization.generate_male_personal_name()
			//surname_text_field.text = civilization.generate_male_surname()
			surname_text_field.text = "" //don't automatically generate a surname yet, since many civilizations don't have a large enough surname list
		}
	}
	
	NormalText {
		id: name_label
		anchors.top: title_item.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Name") + ":"
	}
	
	CustomTextField {
		id: name_text_field
		anchors.verticalCenter: name_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: generate_name_button.left
		anchors.rightMargin: 8 * wyrmgus.scale_factor
	}
	
	SmallButton {
		id: generate_name_button
		anchors.verticalCenter: name_label.verticalCenter
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Generate")
		hotkey: "g"
		
		onClicked: {
			name_text_field.text = civilization.generate_male_personal_name()
		}
	}
	
	NormalText {
		id: surname_label
		anchors.top: name_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Surname") + ":"
	}
	
	CustomTextField {
		id: surname_text_field
		anchors.verticalCenter: surname_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		//anchors.right: generate_surname_button.left
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
	}
	
	/*
	SmallButton {
		id: generate_surname_button
		anchors.verticalCenter: surname_label.verticalCenter
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Generate")
		
		onClicked: {
			surname_text_field.text = civilization.generate_male_surname()
		}
	}
	*/
	
	NormalText {
		id: civilization_label
		anchors.top: surname_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Civilization") + ":"
	}
	
	Dropdown {
		id: civilization_dropdown
		anchors.verticalCenter: civilization_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: wyrmgus.get_playable_civilizations()
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	NormalText {
		id: unit_type_label
		anchors.top: civilization_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Unit Type") + ":"
	}
	
	Dropdown {
		id: unit_type_dropdown
		anchors.verticalCenter: unit_type_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: civilization !== null ? civilization.get_custom_hero_unit_types() : []
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	NormalText {
		id: trait_label
		anchors.top: unit_type_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Trait") + ":"
	}
	
	Dropdown {
		id: trait_dropdown
		anchors.verticalCenter: trait_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: unit_type !== null ? unit_type.traits : []
		
		function get_entry_name(entry) {
			return entry.name + ": " + entry.get_upgrade_effects_qstring()
		}
	}
	
	NormalText {
		id: hair_color_label
		anchors.top: trait_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Hair Color") + ":"
	}
	
	Dropdown {
		id: hair_color_dropdown
		anchors.verticalCenter: hair_color_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: unit_type !== null ? unit_type.get_custom_hero_hair_color_tags_qvariant_list() : []
		
		function get_entry_name(entry) {
			if (entry.name.length > 0) {
				return entry.name
			}
			
			return entry.identifier
		}
	}
	
	SmallButton {
		id: create_button
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Create")
		hotkey: "t"
		
		onClicked: {
			if (name_text_field.text.length === 0) {
				error_dialog.text = "The hero's name cannot be empty."
				error_dialog.open()
				return
			} else if (!wyrmgus.is_name_valid_for_custom_hero(name_text_field.text)) {
				error_dialog.text = "The custom hero's name is invalid."
				error_dialog.open()
				return
			}
			
			if (surname_text_field.text.length > 0 && !wyrmgus.is_name_valid_for_custom_hero(surname_text_field.text)) {
				error_dialog.text = "The custom hero's surname is invalid."
				error_dialog.open()
				return
			}
			
			wyrmgus.create_custom_hero(name_text_field.text, surname_text_field.text, civilization, unit_type, trait, hair_color_tag_identifier)
			create_custom_hero_dialog.close()
		}
	}
	
	SmallButton {
		id: cancel_button
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Cancel")
		hotkey: "c"
		
		onClicked: {
			create_custom_hero_dialog.close()
		}
	}
}
