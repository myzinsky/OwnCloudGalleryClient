// ####################################################################
// OwnCloudGalleryClient - Owncloud synced picture management
//
// AdaptiveUI.qml
//
// created: 16. Nov 2015
// author: Florian Faßnacht (fassnacht)
//
// brief: Main UI file which adpatest dependend on deployment platform.
// ####################################################################


import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle { //main area
    implicitWidth: 1024
    implicitHeight: 768
    color: "#F2F2F2"

    Rectangle { //top menue area
        anchors.top: parent.top
        implicitHeight: 30
        width: parent.width
        color: "#D5D5D5"
    }
}
