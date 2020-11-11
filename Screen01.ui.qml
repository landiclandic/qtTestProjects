import QtQuick 2.12
import untitled 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtQuick.Studio.Effects 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Rectangle {
    id: rectangle1

    color: Constants.backgroundColor
    radius: 3
    property alias dial: dial

    Text {
        text: qsTr("Hello untitled")
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Dial {
        id: dial
        x: 916
        y: 202
        wheelEnabled: true
        inputMode: Dial.Horizontal
        to: 100
        value: 1
        focusPolicy: Qt.TabFocus
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                onFinished: rectangle1.state = ""
                duration: 1000
                to: 1000
                from: 0
                loops: 1
                running: true
            }
        ]
        endFrame: 1000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: dial
            property: "x"
            Keyframe {
                value: 671
                frame: 0
            }

            Keyframe {
                value: 930
                frame: 476
            }

            Keyframe {
                value: 916
                frame: 714
            }
        }

        KeyframeGroup {
            target: dial
            property: "y"
            Keyframe {
                value: 90
                frame: 0
            }

            Keyframe {
                value: 288
                frame: 253
            }

            Keyframe {
                value: 202
                frame: 714
            }
        }

        KeyframeGroup {
            target: dial
            property: "value"

            Keyframe {
                value: 0
                frame: 714
            }
        }
    }

    BusyIndicator {
        id: busyIndicator
        x: 907
        y: 157
        width: 117
        height: 243
    }

    ProgressBar {
        id: progressBar
        x: 335
        y: 73
        width: 93
        height: 29
        value: slider.value
        indeterminate: element.checked
        scale: 3.1
        enabled: true
        opacity: 0.8
        from: 0
        z: 0
        transformOrigin: Item.Left
        font.pointSize: 23
        wheelEnabled: false
        focusPolicy: Qt.StrongFocus
        font.capitalization: Font.Capitalize
        to: 99.8
    }

    Connections {
        target: progressBar
        onClicked: print("clicked")
    }

    TriangleItem {
        id: triangle
        x: 595
        y: 219
        radius: dial.value
        fillColor: "#0d8eeb"
        gradient: RadialGradient {
            focalRadius: 0
            focalX: 50
            centerX: 50
            centerRadius: 50
            focalY: 50
            centerY: 50
            GradientStop {
                position: 0
                color: "#0d8eeb"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        strokeColor: "#6932a6"
        strokeWidth: 5
        arcRadius: 11
    }

    Slider {
        id: slider
        snapMode: Slider.SnapAlways
        stepSize: 5
        from: 10
        orientation: Qt.Vertical
        to: 40
        anchors.left: parent.left
        anchors.leftMargin: 196
        anchors.top: parent.top
        anchors.topMargin: 152
        transformOrigin: Item.Center
        z: 0
        rotation: 0
        value: 10
    }

    Switch {
        id: element
        x: 335
        y: 203
        text: qsTr("Indeterminate")
    }

    SwipeView {
        id: swipeView
        x: 260
        y: 395
        width: 200
        height: 200
        hoverEnabled: true
        wheelEnabled: true
        font.family: "Tahoma"
        spacing: -3
        currentIndex: -4

        Item {
            id: element1
        }

        Item {
        }
    }

    Image {
        id: image1
        x: 874
        y: 466
        width: 160
        height: 161
        sourceSize.height: 296
        sourceSize.width: 324
        fillMode: Image.PreserveAspectFit
        source: "Screen Shot 2020-07-15 at 4.23.06 PM.png"
    }

}





































































/*##^##
Designer {
    D{i:0;formeditorZoom:1.100000023841858;uuid:"c697ad9448308aa18edb2ddf1e70bdc3"}D{i:1;uuid:"f747012cb70906f4db2444e189e3d187"}
D{i:2;uuid:"db6b20357c00c7171fa8875a5648795b"}D{i:15;uuid:"d227ecab51d3eb59409b9226241a9838"}
D{i:16;uuid:"97146e5540b6a2be6371d45613d26f8c"}D{i:18;uuid:"238be8b9c8ae9d5b851ea798049dcd5c"}
D{i:22;uuid:"205bceb0331b4fcf8a00c3586a346cc2"}D{i:23;uuid:"7aa34dcfdec8b5c6201b168030677518"}
D{i:25;uuid:"99dfe699e0f87b63599eb7c3978b5ae2"}D{i:26;uuid:"3bbf8549fb3bced4d424f2341a550c48"}
D{i:24;uuid:"51d667c966c7d1a0d5cc2b2995e55b31"}D{i:27;uuid:"bbe7c0607d9bd75abfad2566046e35cd"}
}
##^##*/
