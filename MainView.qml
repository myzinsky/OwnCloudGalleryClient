import QtQuick 2.5
import QtQuick.Controls 1.4

Flickable{
    contentWidth: parent.width
    contentHeight: scrollContent.height
    Column{
        id: scrollContent
        width: parent.width
        PictureSet{
            width: parent.width
        }
        PictureSet{
            width: parent.width
        }
        PictureSet{
            width: parent.width
        }
    }
}


