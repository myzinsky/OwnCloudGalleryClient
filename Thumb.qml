import QtQuick 2.5
import QtQuick.Controls 1.4


Image
{
    id: thump
    sourceSize.height: 200

    Rectangle
    {
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height/5
        color: "#80FFFFFF"
        visible: false
        id: highlighter
        Text {
            id: name
            anchors.fill: parent

        }
    }

    MouseArea
    {
        id: mouse
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height/5
        hoverEnabled: true
        onHoveredChanged: {
            if(thump.sourceSize.height > 100){
                if(mouse.containsMouse){
                    highlighter.visible = true
                }else{
                    highlighter.visible = false
                }
            }
        }
    }
}

