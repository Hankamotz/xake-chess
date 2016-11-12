import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2



MainView {

    objectName: "mainView"


    applicationName: "xake.hankamotz"

    automaticOrientation: true
    width: units.gu(100)
    height: units.gu(70)
    
    anchorToKeyboard: true


    PageStack {
              id: mainPageStack
              Component.onCompleted: push(pageMain)
              anchors.fill: parent
                     width: parent.width
               
        Page {
            id: pageMain
            visible: false
         
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Chess")

            trailingActionBar {
                                       numberOfSlots: 1
                                       actions: [
                                           Action {
                                               id: actionAbout
                                               iconName: "info"
                                               text: i18n.tr("About")
                                               onTriggered:  mainPageStack.push(Qt.resolvedUrl("About.qml"))
                                                }



                                       ]
                                   }

        }


            Button {
                anchors{

                    horizontalCenter: parent.horizontalCenter
                    top: pageHeader.bottom
                    topMargin: units.gu(6)
            }

                id: "whitebutton"

                width:  units.gu(22)
                text: i18n.tr( "New game as white")
                color: "#ffffff"
                onTriggered: mainPageStack.push(Qt.resolvedUrl("white.qml"))
            }
            Button {
                anchors{

                    horizontalCenter: parent.horizontalCenter
                    top: whitebutton.bottom
                    topMargin: units.gu(2)
            }
                id: "blackbutton"

                width:  units.gu(22)
                text: i18n.tr("New game as black")
                color: "#3b3b3b"
                onTriggered:  mainPageStack.push(Qt.resolvedUrl("black.qml"))

            }
           }
        }




      }
