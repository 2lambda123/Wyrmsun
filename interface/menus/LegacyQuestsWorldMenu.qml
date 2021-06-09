import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

ButtonMenuBase {
	id: legacy_quests_world_menu
	title: "Legacy Quests"
	button_component: Qt.createComponent("../LegacyQuestIconButton.qml")
	entries: wyrmgus.get_world_quests(world)
	button_area_bottom_anchor: difficulty_label.top
	
	property string world: ""
	
	NormalText {
		id: quests_completed_label
		text: get_completed_quests_count() + "/" + entries.length + " Quests Completed"
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: difficulty_label.top
		anchors.bottomMargin: 32 * wyrmgus.defines.scale_factor
	}
	
	NormalText {
		id: difficulty_label
		text: "Difficulty:"
		anchors.left: difficulty_dropdown.left
		anchors.bottom: difficulty_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: difficulty_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor + (height * model.length)
		width: 100 * wyrmgus.defines.scale_factor
		model: wyrmgus.get_difficulties()
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.get_difficulty_index())
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.get_difficulty_index() !== selectedEntry) {
				wyrmgus.preferences.set_difficulty_index(selectedEntry)
				wyrmgus.preferences.save()
			}
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_difficulty_name(entry)
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCustomHero(\"\"); quest_world_menu:stop();"
	}
	
	function get_completed_quests_count() {
		var count = 0
		
		for (var i = 0; i < entries.length; ++i) {
			var quest = entries[i]
			
			if (quest.completed) {
				count += 1
			}
		}
		
		return count
	}
}
