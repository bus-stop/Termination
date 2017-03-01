## 0.5.0
 * Added `ELECTRON_RUN_AS_NODE` env variable to replace deprecated (and previously removed) variable. Should solve problems running `atom`, `electron`, `node`, and `npm` from inside Termination.
 Credits to @Naki21 (Yianni Kostantinidis)

## 0.4.0
 * New option: Copy text to clipboard on selection (enabled by default) - upstream from PIO and Barbayar
 * Added fallback shell when process.env.SHELL is not defined for macOS/Linux users - thanks to @isacc-webb

## 0.3.7
 * Fixed pane.addItem deprecation in lib/status-bar.coffee - Ben Phelps

## 0.3.6
 * Renamed 'default style' to 'classic style' in lib/status-bar.coffee
 * Added One Dark theme - pmbenjamin
 * Changed `command` to `commands` in termination.coffee for upstream compatibility
 * The active terminal icon is now underlined - David Klanac
 * Fixed 'Argument to path.dirname must be a string' deprecation - Ben Phelps

## 0.3.5
 * Termination now emulates the appearance of terminal-plus by default
 * spec/ cleanup
 * Added keybinding to maximise termination
 * Removed deprecated enviromental variable 'ATOM_SHELL_INTERNAL_RUN_AS_NODE'

## 0.3.4
 * Removed pio-terminal-status-icon reference (fixes #13)
 * Adopted styles/termination.less from PlatformIO in place of previous from
   terminal-plus

## 0.3.3
 * Corrected typos in README.md
 * Added option to emulate the appearance of terminal-plus

## 0.3.2
 * Fixed #29 from upstream
 (https://github.com/platformio/platformio-atom-ide-terminal/issues/29)

## 0.3.1
 * Added ability to export all lines in termination to a text file - Ben Pritchard
 * Fixed conflicting termination/Atom keybindings for macOS
   (https://github.com/jeremyramin/terminal-plus/pull/350)
 * Changed green in Christmas theme
 * Added GitHub theme
 * Added keymap to focus terminal
   (https://github.com/jeremyramin/terminal-plus/pull/138)

## 0.3.0
 * Cleanup! Removed testing code that was accidentally not removed earlier...
 * Switched to the latest PlatformIO PTY.js fork

## 0.2.1
 * Added notes to CHANGELOG.platformio.md
 * Fixed incorrect keybinding documentation in README.md for closing terminals
 * Added "Termination Rocks!" png to README.md (replaced "Terminal Plus Rocks!")
 * Added Christmas theme (Merry Christmas!)
 * Fixed keybindings for insert-selected-text
 * Changed copy/paste keybindings for Linux and Windows

## 0.2.0
 * Completely replaced in-code references to PlatformIOTerminal
 * Changed terminal to close by default if the shell exits
 * Reworked intro in README.md
 * Coloured close icon "X" to red

## 0.1.3 - Documentation Update
 * Changed links in README.md to point to our local files
 * Improved documentation for keybindings (replaced incorrects 'ctrl'
   with 'alt')

## 0.1.2
 * Added link to license in package.json
 * Renamed PlatfromIO changelog

## 0.1.1
 * Added "MIT" license to package.json

## 0.1.0

 * Initial fork from platform-ide-terminal
 * Adapted style of terminal-plus (as much as possible)
