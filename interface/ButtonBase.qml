import QtQuick 2.12
import QtQuick.Controls 2.12

WidgetBase {
	id: button
	width: image.width
	height: image.height
	widget_type: button_type
	
	property string button_type: ""
	property string lua_command: ""
	property bool centered_text: true
	property int text_font_size: 12 * wyrmgus.defines.scale_factor
	
	NormalText {
		id: label
		anchors.horizontalCenter: parent.centered_text ? parent.horizontalCenter : undefined
		anchors.horizontalCenterOffset: parent.centered_text && parent.pressed ? 1 * wyrmgus.defines.scale_factor : 0
		anchors.left: parent.centered_text ? undefined : parent.left
		anchors.leftMargin: parent.centered_text ? 0 : 8 * wyrmgus.defines.scale_factor
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: parent.pressed ? 1 * wyrmgus.defines.scale_factor : 0
		text: parent.enabled ? (parent.hovered ? highlight(parent.text) : highlight_hotkey(parent.text, parent.hotkey)) : parent.text
		font.pixelSize: text_font_size
		color: parent.enabled ? "white" : "gray"
	}
	
	onClicked: {
		if (lua_command.length > 0) {
			wyrmgus.call_lua_command(lua_command)
		}
	}
}
