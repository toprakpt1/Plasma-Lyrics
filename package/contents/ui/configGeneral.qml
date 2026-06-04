import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.kquickcontrols as KQC2
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
    property alias cfg_useFixedSize: useFixedSizeCheckBox.checked
    property alias cfg_fixedWidth: fixedWidthTextField.text
    property alias cfg_fixedHeight: fixedHeightTextField.text
    property alias cfg_margin: marginSpinBox.value
    property alias cfg_fade: fadeTextField.text
    property alias cfg_noMedia: noMediaTextField.text
    property alias cfg_noLyrics: noLyricsTextField.text
    property alias cfg_offset: offsetTextField.text

    Kirigami.FormLayout {
        RowLayout {
            Kirigami.FormData.label: i18n("Use fixed size: ")
            QQC2.CheckBox {
                id: useFixedSizeCheckBox
            }
            Kirigami.ContextualHelpButton {
                toolTipText: i18n("Use this if placing inside of a panel")
            }
        }

        QQC2.TextField {
            id: fixedWidthTextField
            visible: cfg_useFixedSize ? true : false
            Kirigami.FormData.label: i18n("Fixed width: ")
        }

        QQC2.TextField {
            id: fixedHeightTextField
            visible: cfg_useFixedSize ? true : false
            Kirigami.FormData.label: i18n("Fixed height: ")
        }
        
        QQC2.SpinBox {
            id: marginSpinBox
            Kirigami.FormData.label: i18n("Margin: ")
        }

        QQC2.TextField {
            id: fadeTextField
            Kirigami.FormData.label: i18n("Fade: ")
        }

        QQC2.TextField {
            id: noMediaTextField
            Kirigami.FormData.label: i18n("No media text: ")
        }

        QQC2.TextField {
            id: noLyricsTextField
            Kirigami.FormData.label: i18n("No lyrics text: ")
        }
        
        QQC2.TextField {
            id: offsetTextField
            Kirigami.FormData.label: i18n("Lyric offset: ")
        }
    }
}
