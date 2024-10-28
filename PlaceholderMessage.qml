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

    property var fontMetrics: TextMetrics{text:'M'}
    spacing: fontMetrics.height

    Heading {
	    text: root.text
	    visible: text.length > 0
	    opacity: 0.65

	    Layout.fillWidth: true
	    horizontalAlignment: Qt.AlignHCenter
	    verticalAlignment: Qt.AlignVCenter

	    wrapMode: Text.WordWrap
    }

    Label {
	    id: label

	    text: root.explanation
	    visible: root.explanation.length > 0
	    opacity: 0.65

	    wrapMode: Text.WordWrap
	    textFormat: Text.RichText

	    Layout.fillWidth: true
    }
}
