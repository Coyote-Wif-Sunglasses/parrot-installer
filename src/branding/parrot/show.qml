/*
 * Parrot theme for Calamares
 * 
 * Copyright 2017 Lorenzo "Palinuro" Faletra <palinuro@parrotsec.org>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 5000
        running: false
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {

        Image {
            id: background
            source: "slides.png"
            width: 450; height: 159
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "This is the installer of the Parrot GNU/Linux Distribution.<br/>"+
                  "It includes a full portable laboratory for security"+
                  "and digital forensics experts, but it also includes"+
                  "all you need to develop your own softwares or protect"+
                  "your privacy with anonymity and crypto tools."
            wrapMode: Text.WordWrap
            width: root.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background
            source: "links.jpg"
            width: 300; height: 140
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "<h3>Security</h3><br>Parrot Security includes a full arsenal of security oriented tools to perform penetration tests, security audits and more. With a Parrot usb drive in your pocket you will always be sure to have all you need with you."
            wrapMode: Text.WordWrap
            width: root.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background
            source: "fingerprint.jpg"
            width: 300; height: 147
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "<h3>Privacy</h3><br> Parrot includes by default TOR, I2P, anonsurf, gpg, zulucrypt, veracrypt, truecrypt, luks and many other technologies designed to defend your privacy and your identity."
            wrapMode: Text.WordWrap
            width: root.width
            horizontalAlignment: Text.Center
        }
    }
    
    Slide {

        Image {
            id: background
            source: "devel.jpg"
            width: 360; height: 122
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "<h3>Development</h3><br> If you need a comfortable environment with updated frameworks and useful libraries already installed, Parrot will amaze you as it includes a full development-oriented environment with some powerful editors and IDEs pre-installed and many other tools installable from our repository."
            wrapMode: Text.WordWrap
            width: root.width
            horizontalAlignment: Text.Center
        }
    }
}
