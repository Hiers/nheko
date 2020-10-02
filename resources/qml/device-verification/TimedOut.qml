import QtQuick 2.3
import QtQuick.Controls 2.10
import QtQuick.Layouts 1.10

Pane {
	property string title: qsTr("Verification timed out")
	ColumnLayout {
		spacing: 16
		Text {
			Layout.maximumWidth: 400
			Layout.fillHeight: true
			Layout.fillWidth: true
			wrapMode: Text.Wrap
			id: content
			text: qsTr("Device verification timed out.")
			color:colors.text
			verticalAlignment: Text.AlignVCenter
		}
		RowLayout {
			Item {
				Layout.fillWidth: true
			}
			Button {
				Layout.alignment: Qt.AlignRight
				text: qsTr("Close")

				onClicked: {
					deviceVerificationList.remove(tran_id);
					flow.deleteFlow();
					dialog.destroy()
				}
			}
		}
	}
}
