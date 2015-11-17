import QtQuick 2.5
import QtQuick.Controls 1.4

Column {
    id: rect

    //headline
    Rectangle{
        color: "transparent"
        height: 32
        width: parent.width
        Row{
            id: headline
            height: parent.height
            width: parent.width
            spacing: 15

            Rectangle{//simple spacer
                implicitWidth: 2
                height: parent.height
                color: "transparent"
            }

            Image{
                id: arrow
                source: "icons_qml/arrow_128x128.png"
                sourceSize.height: 20
                anchors.verticalCenter: parent.verticalCenter
                transform: Rotation{
                    id: arrowRotation
                    origin.x: 10;
                    origin.y: 10;
                    angle: 0;
                }


                onStateChanged: arrow.state == 'arrowDown' ? thumpsFlow.state = 'down' : thumpsFlow.state = ''

                MouseArea {
                    anchors.fill: parent
                    onClicked: arrow.state == 'arrowDown' ? arrow.state = '' : arrow.state = 'arrowDown'
                }
                states: [
                    State { name: "arrowDown"
                        PropertyChanges {
                            target: arrowRotation
                            angle: 90
                        }
                    }
                ]
                transitions: [
                    Transition {
                        NumberAnimation { properties: "angle" }
                    }
                ]
            }

            Text{
                anchors.leftMargin: 10
                id: infoPannle
                text: "Dave Metthews Band"
                anchors.verticalCenter: parent.verticalCenter

                font.pixelSize: 16
                font.family: "Helvetica"
                font.bold: true
            }
            Text{
                id: dataPannle
                text: "26. Okt. 2015 Frankfurt am Main"
                anchors.verticalCenter: parent.verticalCenter

                font.pixelSize: 12
                font.family: "Helvetica"
                font.bold: false
            }
        }
    }

    //picture view area
    Flow{
        id: thumpsFlow
        width: parent.width
        visible: false
        spacing: 4

        states: [
            State { name: "down"
                PropertyChanges {
                    target: thumpsFlow
                    visible: true
                }
            }
        ]
        transitions: [
            Transition {
                NumberAnimation {
                    properties: "visible"
                }
            }
        ]

        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4005_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4006_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4007_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4008_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4009_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4010_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4011_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4012_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4013_bt.png"
        }
        Thumb{
            source: "file:///Users/florian.fassnacht/Desktop/Dave Matthews Band 2/OCG_thumbs/IMG_4014_bt.png"
        }
    }

    //spacing
    Rectangle{
        height: 5
        width: parent.width
        color: "transparent"
    }
}

