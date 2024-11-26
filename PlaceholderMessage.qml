/*
 *  SPDX-FileCopyrightText: 2020 Nate Graham <nate@kde.org>
 *  SPDX-FileContributor: 2024 Modified by Waldo Lemmer <pugonfireyt@gmail.com>
 *
 *  SPDX-License-Identifier: LGPL-2.0-or-later
 */

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

// Modifications:
// - Purely informational
// - No icon
// - Kirigami dependency eliminated
// - Removed _announce() (Accessible.announce isn't documented)
// - Made label non-selectable
// - Docstrings were a bit much
ColumnLayout {
    id: root

    // Text to show in the placeholder label
    property string text

    // Smaller explanatory text below the larger title-style text
    property string explanation

    property alias wrapMode: label.wrapMode
    property alias textFormat: label.textFormat

    Units { id: units }
    spacing: units.largeSpacing

    Heading {
	    text: root.text
	    visible: text.length > 0
	    opacity: 0.65

	    Layout.alignment: Qt.AlignCenter

	    wrapMode: Text.WordWrap
    }

    Label {
	    id: label

	    text: root.explanation
	    visible: root.explanation.length > 0
	    opacity: 0.65

	    wrapMode: Text.WordWrap

	    Layout.maximumWidth: dummy.implicitWidth
	    Layout.alignment: Qt.AlignCenter
	    Layout.fillWidth: true

	    Label {
		    id: dummy
		    text: parent.text
		    visible: false
		    textFormat: parent.textFormat
		    wrapMode: Text.NoWrap
	    }
    }
}
