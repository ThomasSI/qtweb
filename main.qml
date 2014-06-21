import QtQuick 2.2
import QtQuick.Controls 1.1
import QtWebKit 3.0

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("App")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
        Menu {
            title: qsTr("Page")
            MenuItem {
                text: qsTr("google")
                onTriggered: webview.url = "http://www.google.de"
            }
            MenuItem {
                text: qsTr("zfap")
                onTriggered: webview.url = "http://192.168.10.166:3600"
            }
            MenuItem {
                text: qsTr("morphing-cubes")
                onTriggered: webview.url = "http://www.webkit.org/blog-files/3d-transforms/morphing-cubes.html"
            }
        }
    }

    WebView {
        width: parent.width
        height: parent.height
        id: webview
        anchors.centerIn: parent
        url: "http://192.168.10.166:3600"
    }
}
