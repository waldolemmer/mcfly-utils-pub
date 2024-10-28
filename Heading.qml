/*
 *  SPDX-FileCopyrightText: 2012 Sebastian Kügler <sebas@kde.org>
 *  SPDX-FileContributor: 2024 Modified by Waldo Lemmer <pugonfireyt@gmail.com>
 *
 *  SPDX-License-Identifier: LGPL-2.0-or-later
 */

import QtQuick
import QtQuick.Controls

// Modifications:
// - Permanently set type to Primary
// - Permanently set level to 1
// - Removed docstrings
// - Removed Kirigami dependency
Label {
    id: heading

    enum Type {
        Normal,
        Primary,
        Secondary
    }
    TextMetrics { id: fontMetrics }

    font.pointSize: 1.35 * fontMetrics.font.pointSize;
    font.weight: Font.DemiBold

    Accessible.role: Accessible.Heading
}
