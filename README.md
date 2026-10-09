# Win2BtnMouseScrolling
An AutoHotkey (v2) script that brings modern middle-click drag scrolling to **2-button IBM TrackPoint keyboards**, retro hardware, or any standard mouse setup lacking a middle mouse button.

\---

## 💡 Motivation

Classic IBM TrackPoint keyboards (such as older Model M variants or PS/2 keyboards connected via PS/2-to-USB adapters) are legendary for their typing feel and ergonomic pointer control. However, these vintage models lack the modern **middle mouse button** required for trackpoint drag-scrolling.

Generic PS/2-to-USB active converters often register as standard HID mice and strip away native driver-level scroll support (such as Synaptics or TrackPoint drivers). This script restores full vertical and horizontal scrolling functionality using simple mouse chord gestures without replacing hardware or using expensive active adapters.

\---

## 🎯 Solution

This script intercepts simultaneous **Left-Click + Right-Click** mouse combinations and converts relative cursor movements into mouse wheel scroll events (`WheelUp`, `WheelDown`, `WheelLeft`, `WheelRight`).

### Features:

* **Dual-Button Chord Activation:** Hold both `LButton` and `RButton` together in any order to initiate scroll mode.
* **Cursor Lock:** Snaps the cursor back to its starting position while scrolling so you never run out of screen space.
* **Auto Text-Deselect:** Automatically releases the click and deselects any text accidentally highlighted when initiating the scroll gesture.
* **Horizontal \& Vertical Scrolling:** Smooth 2D scrolling based on an adjustable threshold.
* **Full Native Compatibility:** Retains standard left-clicking, right-clicking, and normal drag-selection behavior when buttons are used individually.

\---

## 🛠️ Setup \& Installation

### Requirements

* **Windows OS**
* **AutoHotkey v2.0+** — Download from the official [AutoHotkey Website](https://www.autohotkey.com/).

### Quick Start

1. Install [AutoHotkey v2](https://www.autohotkey.com/).
2. Clone or download this repository.
3. Double-click `trackpoint\_scroll.ahk` to run the script.
4. *(Optional)* To run automatically on boot, press `Win + R`, type `shell:startup`, and place a shortcut to the `.ahk` file in that folder.

\---

## 🚀 How to Use

1. Place your finger on the TrackPoint.
2. Press and hold **both Left and Right Mouse Buttons** at the same time.
3. Move the TrackPoint **Up / Down** to scroll vertically or **Left / Right** to scroll horizontally.
4. Release either mouse button to exit scroll mode and return to normal mouse pointer operation.

\---

## ⚙️ Configuration

You can customize the scrolling sensitivity by opening the script in any text editor and adjusting the `scrollThreshold` variable at the top:

```autohotkey
; Lower number = faster, more sensitive scrolling
; Higher number = slower, requires larger movements
scrollThreshold := 8
```

\---

## ⚠️ Limitations \& Notes

* **Hardware Compatibility:** While tailored for **2-button IBM TrackPoint keyboards connected via PS/2-to-USB adapters**, this script works with **any standard mouse or pointing device** running on Windows.
* **Application Quirks:** The auto-deselect feature sends a quick left-click to clear text highlights upon starting a scroll. In rare custom UI frameworks or non-standard text inputs, this may focus the cursor at the starting point.
* **Fast Clicking:** Very rapid simultaneous button mashing might occasionally trigger a single click before the chord combo registers.

\---

## 📄 License

Distributed under the [MIT License](LICENSE).

