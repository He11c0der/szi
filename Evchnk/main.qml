import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import "sziData.js" as Data

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rctnglMain
        color: "#ffffff"
        radius: 6
        border.color: "#bdb4b4"
        border.width: 4
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#1b1a19"
            }

            GradientStop {
                position: 1
                color: "#304352"
            }
            orientation: Gradient.Vertical
        }

        Rectangle {
            id: rcntglTitle
            x: 0
            y: 0
            width: 640
            height: 108
            color: "#ffffff"
            radius: 6
            border.color: "#a7a1a1"
            border.width: 4
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#616161"
                }

                GradientStop {
                    position: 1
                    color: "#9bc5c3"
                }
                orientation: Gradient.Vertical
            }

            Text {
                id: txtTitle
                x: 300
                y: 28
                width: 588
                height: 53
                color: "#f9eded"
                text: qsTr("Выбор и обоснование рационального варианта состава системы защиты информации")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                anchors.horizontalCenterOffset: 0
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Grid {
            id: grid
            x: 105
            y: 142
            width: 538
            height: 334
            anchors.horizontalCenterOffset: -19
            spacing: 35
            topPadding: 16
            leftPadding: 28
            anchors.horizontalCenter: parent.horizontalCenter
            rows: 8
            columns: 3

            Repeater {
                id: rptr
                model: 13
                ComboBox {
                    id: comboBox
                    height: 30

                    //editable: true
                    model: ListModel {
                        id: model
                    }
                }
            }
        }

        Label {
            id: label1
            x: 61
            y: 138
            color: "#fefefe"
            text: qsTr("Антивирусные средства")
        }

        Label {
            id: label2
            x: 255
            y: 135
            color: "#fefefe"
            text: qsTr("АПК ЗИ от НСД")
        }

        Label {
            id: label3
            x: 383
            y: 120
            width: 188
            height: 57
            color: "#fefefe"
            text: qsTr("Средства противодейтсвия подбора пароля")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            font.pointSize: 8
            font.bold: false
        }

        Label {
            id: label4
            x: 68
            y: 198
            color: "#fefefe"
            text: qsTr("Межсетевые экраны")
        }

        Label {
            id: label5
            x: 224
            y: 190
            width: 163
            height: 16
            color: "#fefefe"
            text: qsTr("Средства шифрования пакетов")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Label {
            id: label6
            x: 39
            y: 319
            width: 185
            height: 16
            color: "#fefefe"
            text: qsTr("Средства контроля целостности")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Label {
            id: label7
            x: 413
            y: 269
            color: "#fefefe"
            text: qsTr("Сканеры безопасности")
        }

        Label {
            id: label8
            x: 219
            y: 268
            color: "#fefefe"
            text: qsTr("Средства организации ЭЦП")
        }

        Label {
            id: label9
            x: 405
            y: 192
            width: 149
            height: 16
            color: "#fefefe"
            text: qsTr("СКЗИ на магнитных носителях")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Label {
            id: label10
            x: 36
            y: 255
            width: 189
            height: 16
            color: "#fefefe"
            text: qsTr("Средства аудита протоколирования")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Label {
            id: label11
            x: 209
            y: 320
            width: 185
            height: 16
            color: "#fefefe"
            text: qsTr("Средства разграничения доступа")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Label {
            id: label12
            x: 389
            y: 322
            width: 198
            height: 16
            color: "#fefefe"
            text: qsTr("Средства гарантированного удаления файлов")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Label {
            id: label13
            x: 51
            y: 399
            color: "#fefefe"
            text: qsTr("Средства видеоснабжения")
        }
    }

    Frame {
        id: frmVrnt
        x: -174
        y: 108
        width: 164
        height: 103

        Column {
            id: column
            anchors.fill: parent
            spacing: 16

            Label {
                id: label
                color: "#000000"
                text: qsTr("Типовые решения СЗИ")
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                font.pointSize: 7
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ComboBox {
                id: cmbxVrnt
                editable: true
                displayText: "12"
                anchors.horizontalCenter: parent.horizontalCenter
                model: ["3", "2"]
            }
        }
    }
    Component.onCompleted: {

        for (var i = 0; i < Data.jsListAS.length; i++) {
            rptr.itemAt(0).model.append({
                                            "text": Data.jsListAS[i]
                                        })
        }
        for (var i = 0; i < Data.jsListAPK.length; i++) {
            rptr.itemAt(1).model.append({
                                            "text": Data.jsListAPK[i]
                                        })
        }
        for (var i = 0; i < Data.jsListAntiPswd.length; i++) {
            rptr.itemAt(2).model.append({
                                            "text": Data.jsListAntiPswd[i]
                                        })
        }
        for (var i = 0; i < Data.jsListSmNet.length; i++) {
            rptr.itemAt(3).model.append({
                                            "text": Data.jsListSmNet[i]
                                        })
        }
        for (var i = 0; i < Data.jsListCrptPck.length; i++) {
            rptr.itemAt(4).model.append({
                                            "text": Data.jsListCrptPck[i]
                                        })
        }
        for (var i = 0; i < Data.jsListHDD.length; i++) {
            rptr.itemAt(5).model.append({
                                            "text": Data.jsListHDD[i]
                                        })
        }

        for (var i = 0; i < Data.jsListAProtocol.length; i++) {
            rptr.itemAt(6).model.append({
                                            "text": Data.jsListAProtocol[i]
                                        })
        }
        for (var i = 0; i < Data.jsListDgtlP.length; i++) {
            rptr.itemAt(7).model.append({
                                            "text": Data.jsListDgtlP[i]
                                        })
        }
        for (var i = 0; i < Data.jsListScnrScrt.length; i++) {
            rptr.itemAt(8).model.append({
                                            "text": Data.jsListScnrScrt[i]
                                        })
        }
        for (var i = 0; i < Data.jsListCntrl.length; i++) {
            rptr.itemAt(9).model.append({
                                            "text": Data.jsListCntrl[i]
                                        })
        }
        for (var i = 0; i < Data.jsListAccs.length; i++) {
            rptr.itemAt(10).model.append({
                                             "text": Data.jsListAccs[i]
                                         })
        }
        for (var i = 0; i < Data.jsListGrntDelFls.length; i++) {
            rptr.itemAt(11).model.append({
                                             "text": Data.jsListGrntDelFls[i]
                                         })
        }
        for (var i = 0; i < Data.jsListVideo.length; i++) {
            rptr.itemAt(12).model.append({
                                             "text": Data.jsListVideo[i]
                                         })
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}D{i:1}D{i:28}
}
##^##*/
