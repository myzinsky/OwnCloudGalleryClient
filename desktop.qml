// ####################################################################
// OwnCloudGalleryClient - Owncloud synced picture management
//
// desktop.qml
//
// created: 16. Nov 2015
// author: Florian Faßnacht (fassnacht)
//
// brief: Main window file for deplyment on desktop systems.
//        It houses the main UI and adds additional funktionality only
//        for desktop computers (like menubar etc.).
// ####################################################################

import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    visible: true
    title: qsTr("OwnCloudGallery")

    AdaptiveUI {
        anchors.fill: parent
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Accounts")
                onTriggered: console.log("Accounts triggered");
            }
            MenuItem {
                text: qsTr("&Local Libs")
                onTriggered: console.log("Accounts triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

}

