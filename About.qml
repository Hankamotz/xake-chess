import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

            
    Page {
            
            id: aboutPage
            visible: false
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("About")
            leadingActionBar {
                           numberOfSlots: 1
                           actions: [
                               Action {
                                   id: actionSettings
                                   iconName: "back"
                                   text: i18n.tr("Back")
                                   onTriggered: {
                                                           onClicked: mainPageStack.pop(aboutPage)
                                                       }
                               }
                           ]
                       }
        }


        Image {
                        id: appImage
                        source: "xake.png"
                        anchors{

                            horizontalCenter: parent.horizontalCenter
                            top: pageHeader.bottom
                            topMargin: units.gu(6)
                    }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: appImage.bottom
                topMargin: units.gu(6)
            }
            id: label
            objectName: "label"
            text: i18n.tr("Chess v.0.5.2")
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label.bottom
                topMargin: units.gu(3)
            }
            id: label1
            objectName: "label"
            text: i18n.tr("2016")
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label1.bottom
                topMargin: units.gu(3)
            }
            id: label2
            objectName: "label"
            text: i18n.tr("Andima Landaluze <andimalo@hotmail.es>")
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label2.bottom
                topMargin: units.gu(3)
            }
            id: label3
            objectName: "label"
            text: i18n.tr("This app uses:")

        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label3.bottom
                topMargin: units.gu(3)
            }
            id: label4
            objectName: "label"
            text: i18n.tr("cinnamon chess engine (GPL v.3 license)")

        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label4.bottom
                topMargin: units.gu(3)
            }
            id: label5
            objectName: "label"
            text: i18n.tr("chessboardjs (MIT license)")

        }

        }
    }



