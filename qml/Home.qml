import QtQuick
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Window {
    id: homeWindow
    title: qsTr("TopLevel")
    width: 1000; height: 700
    visible: true
    Material.theme: Material.Dark
    Material.accent: Material.Blue
    color: "#000000"

    onClosing:{
        Qt.quit()
    }

    Button{
        anchors.centerIn: parent
        id: botonazo
        width: 150; height: 60
        text: qsTr("BOTONAZO")
    }
}
