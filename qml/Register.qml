import QtQuick
import QtQuick.Window
import QtQuick.Controls.Material 2.3

Window {
    id: loginWindow
    width: 410
    height: 600
    visible: true
    color: "Transparent"
    title: qsTr("TopLevel")
    Material.theme: Material.Dark
    Material.accent: Material.DeepPurple

    flags: Qt.FramelessWindowHint | Qt.Window

    Rectangle{
        id: rectangle
        width: 360; height: 560
        radius: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#000000"

        Button{
            id: closeButton
            width: 30; height: 30
            text: qsTr("x")
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: 7
            anchors.rightMargin: 7
            onClicked: {
                Qt.quit()
            }
            Material.theme: Material.Light
        }

        Image {
            id: logo
            width: 323
            height: 121
            anchors.top: parent.top
            source: "../resources/imgs/toplevel.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.Stretch
            anchors.topMargin: 32
            mipmap: true
        }


        TextField{
            id: userNameInput
            width: parent.width * 0.8
            placeholderText: qsTr("Usuario...")
            anchors.top: logo.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 50
        }

        TextField{
            id: userPasswordInput
            width: parent.width * 0.8
            placeholderText: qsTr("Password...")
            anchors.top: userNameInput.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField{
            id: userPasswordConfirmInput
            width: parent.width * 0.8
            placeholderText: qsTr("Confirm Password")
            anchors.top: userPasswordInput.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row{
            id: loginButtons
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: userPasswordConfirmInput.bottom
            anchors.topMargin: 15
            spacing: 13
            Button{
                id: acceptButton
                text: qsTr("Aceptar")
                onClicked: {
                    console.log("REGISTRO PERFECTO")
                }

            }

            Button{
                id: registerButton
                text: qsTr("Volver")
                onClicked: {
                    loader.setSource("Login.qml")
                }
            }
        }
    }
}
