import QtQuick 2.12
import QtQuick.Controls 2.12
import frame_buffer_object 1.0
import map_grid_model 1.0
import unit_list_model 1.0

Item {
	id: loading_screen
	anchors.fill: parent
	visible: wyrmgus.loading_message.length > 0
	z: 5 //should be displayed on top of everything
	
	readonly property var backgrounds: wyrmgus.defines.loading_background_files
	property string background: random_element(backgrounds)
	
	Image {
		anchors.fill: parent
		source: "file:///" + background
		fillMode: Image.PreserveAspectCrop
	}
	
	LargeText {
		id: loading_tip
		text: random_element(wyrmgus.defines.tips)
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.verticalCenter: parent.verticalCenter
		horizontalAlignment: Text.AlignHCenter
		wrapMode: Text.WordWrap
		font.pixelSize: 16 * wyrmgus.scale_factor
		font.bold: true
	}
	
	LargeText {
		id: loading_message
		text: wyrmgus.loading_message
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		horizontalAlignment: Text.AlignHCenter
		wrapMode: Text.WordWrap
		font.pixelSize: 18 * wyrmgus.scale_factor
		font.bold: true
	}
	
	onVisibleChanged: {
		if (!visible) {
			//set a random background and loading tip for the next time the loading screen becomes visible
			background = random_element(backgrounds)
			loading_tip.text = random_element(wyrmgus.defines.tips)
		}
	}
}
