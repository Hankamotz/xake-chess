import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2
/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "xake.hankamotz"

    automaticOrientation: true
    width: units.gu(41)
    height: units.gu(70)
    
    anchorToKeyboard: true

    PageStack {
              id: pageStack
              Component.onCompleted: push(page0)
               width: parent.width
               
        Page {
            id: page0
            visible: false
         
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Chess")
            trailingActionBar {
                                       numberOfSlots: 2
                                       actions: [
                                           Action {
                                               id: actionAbout
                                               iconName: "info"
                                               text: i18n.tr("About")
                                               onTriggered:  pageStack.push(Qt.resolvedUrl("About.qml"))
                                                },
                                             Action {
                                                   id: actionreload
                                                   iconName: "reload"
                                                   text: i18n.tr("Reload")
                                                   onTriggered: webview.reload()

                                           }
                                       ]
                                   }

        }
        WebContext {
                       id: webcontext
                       userAgent: "Mozilla/5.0 (Linux; Android 5.0; Nexus 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

                   }

                   WebView {
                       id: webview
                       anchors.top: pageHeader.bottom
                       anchors.bottom: parent.bottom
                       anchors.left: parent.left
                       anchors.right: parent.right
                       //anchors.fill: parent
                       z: -6
                       context: webcontext
                       url: "white/white.html"
                       preferences.allowFileAccessFromFileUrls: true
                       preferences.allowUniversalAccessFromFileUrls: true
                       preferences.appCacheEnabled: true
                       preferences.javascriptCanAccessClipboard: true
                       preferences.javascriptEnabled: true

                       onLoadingStateChanged: {
                           if (!loading && !mainPageStack.onLoadingExecuted)
                               pageMain.btnsEnabled = true;
                       }

                       onNavigationRequested:{
                           var url = request.url.toString();

                             }
                         }
                     }
      }
}


