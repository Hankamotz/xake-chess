import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2



        Page {
            id: chesstvPage
            visible: false


        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Chess TV")
            leadingActionBar {
                           numberOfSlots:2
                           actions: [
                               Action {
                                   id: actionSettings
                                   iconName: "back"
                                   text: i18n.tr("Back")
                                   onTriggered: {
                                                           onClicked: mainPageStack.pop(chesstvPage)
                                                       }
                               },
                               Action {
                                     id: actionreload
                                     iconName: "reload"
                                     text: i18n.tr("Reload")
                                     onTriggered: {
                                                             webview.reload()
                                                         }
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
                       width: parent.width
                       anchors.top: pageHeader.bottom
                       anchors.bottom: parent.bottom
                       anchors.left: parent.left
                       anchors.right: parent.right
                       //anchors.fill: parent
                       z: -6
                       context: webcontext
                       url: "online/chesstv.html"
                       preferences.allowFileAccessFromFileUrls: true
                       preferences.allowUniversalAccessFromFileUrls: true
                       preferences.appCacheEnabled: true
                       preferences.javascriptCanAccessClipboard: true
                       preferences.javascriptEnabled: true





                       onNavigationRequested:{
                           var url = request.url.toString();

                             }
                         }
                     }

