import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
    property alias cfg_allowSearch: allowSearchCheckBox.checked
    property alias cfg_firstArtist: firstArtistCheckBox.checked
    property alias cfg_apiBaseUrl: apiBaseUrlTextField.text

    Kirigami.FormLayout {
        QQC2.TextField {
            id: apiBaseUrlTextField
            Kirigami.FormData.label: i18n("LRCLIB Base URL: ")
            placeholderText: "https://lrclib.net"
        }

        RowLayout {
            Kirigami.FormData.label: i18n("Search fallback (inaccurate): ")

            QQC2.CheckBox {
                id: allowSearchCheckBox
            }

            Kirigami.ContextualHelpButton {
                toolTipText: i18n("Allows for lyrics based on a search query rather than exact matches")
            }
        }

        RowLayout {
            Kirigami.FormData.label: i18n("First artist only: ")

            QQC2.CheckBox {
                id: firstArtistCheckBox
            }

            Kirigami.ContextualHelpButton {
                toolTipText: i18n("Ignores featured artists while searching for lyrics")
            }
        }
    }
}
