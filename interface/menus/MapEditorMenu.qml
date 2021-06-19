import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

MenuBase {
	id: map_editor_menu
	title: "Map Editor"
	
	LargeButton {
		id: new_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: load_map_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "New Map"
		hotkey: "n"
		lua_command: "RunEditorNewMapMenu();"
	}
	
	LargeButton {
		id: load_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Load Map"
		hotkey: "l"
		lua_command: "RunEditorLoadMapMenu();"
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: load_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
	}
}
