import QtQuick

Window{
    id: mainWindow

    Loader{
        id: loader
        property var f : mainWindow.close
        source: "Login.qml"
    }
}
