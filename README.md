# Termination
![AWIP](https://unpkg.com/vvwip/AWIP.svg)  
A terminal package for Atom, complete with themes, API and more. Forked from platformio-ide-terminal.

[terminal-plus](https://github.com/jeremyramin/terminal-plus) was a much-loved
Atom terminal program but its maintenance has
slowed down and bugs remain unfixed...  
`termination` is here to give you an
almost-identical tool that is being actively developed!

![demo](https://github.com/Fred-Barclay/Termination/raw/master/resources/demo.gif)

*[Nucleus Dark UI](https://atom.io/themes/nucleus-dark-ui) with [Atom Material Syntax](https://atom.io/themes/atom-material-syntax) and our Homebrew theme.*

## Usage

`termination` stays in the bottom of your editor while you work.

Click on a status icon to toggle that terminal (or ``ctrl-` ``). Right click the status icon for a list of available commands. From the right-click menu you can color code the status icon as well as hide or close the terminal instance.

### Terminal
You can open the last active terminal with the `termination:toggle` command (Default:`` ctrl-` ``).  If no terminal instances are available, then a new one will be created. The same toggle command is used to hide the currently active terminal.

From there you can begin typing into the terminal. By default the terminal will change directory into the project folder if possible. The default working directory can be changed in the settings to the home directory or to the active file directory.

[See available commands below](#commands).

## Features

### Full Terminal
Every terminal is loaded with your system’s default initialization files. This ensures that you have access to the same commands and aliases as you would in your standard terminal.

### Themes
The terminal is preloaded with several themes that you can choose from. Not satisfied?  
Use the following template in your stylesheet:
```css
.termination .xterm {
  background-color: ;
  color: ;

  ::selection {
    background-color: ;
  }

  .terminal-cursor {
    background-color: ;
  }
}
```

### Process Titles
By hovering over the terminal status icon, you can see which command process is currently running in the terminal.

![](https://github.com/jeremyramin/terminal-plus/raw/master/resources/terminal_title.png)

### Terminal Naming
Need a faster way to figure out which terminal is which? Name your status icons!

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/status-icon_rename.png)

Available via the status icon context menu.

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/status-icon_rename-dialog.png)

### Color Coding
Color code your status icons!

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/status-icon_color_coding.png)

The colors are customizable in the settings, however the color names remain the same in the context menu.

### Sorting
Organize your open terminal instances by dragging and dropping them.

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/sorting.gif)

### Resizable
You can resize the view vertically, or just maximize it with the maximize button.

### Working Directory
You can set the default working directory for new terminals. By default this will be the project folder.

### File Dropping
Dropping a file on the terminal will insert the file path into the input. This works with external files, tabs from the Atom tab-view, and entries from the Atom tree-view.

### Insert Selected Text
Insert and run selected text from your text editor by running the `termination:insert-selected-text` command (`alt-r` or `cmd-shift-r`).

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/insert_selected_text.gif)

If you have text selected, it will insert your selected text into the active terminal and run it.  
If you don't have text selected it, will run the text on the line where your cursor is then proceed to the next line.

### Quick Command Insert
Quickly insert a command to your active terminal by executing the `termination:insert-text` command.

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/insert_text.png)

A dialog will pop up asking for the input to insert. If you have the `Run Inserted Text` option enabled in the settings (default is false), termination will automatically run the command for you.

#### Support for Special Keys
Support for IME, dead keys and other key combinations via the `Insert Text` dialog box. Just click the keyboard button in the top left of the terminal or set up a keymap to the `termination:insert-text` command.

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/special_keys.gif)

Note: Make sure you have the `Run Inserted Command` toggle off otherwise it will run your inserted text.

### Map Terminal To
Map your terminals to each file or folder you are working on for automatic terminal switching.

#### File
![](https://github.com/jeremyramin/terminal-plus/raw/master/resources/map_terminals_to_file.gif)

#### Folder
![](https://github.com/Fred-Barclay/Termination/raw/master/resources/map_terminals_to_folder.gif)

Toggling the `Auto Open a New Terminal (For Terminal Mapping)` option will have the mapping create a new terminal automatically for files and folders that don't have a terminal. The toggle is located right under the `Map Terminals To` option.

![](https://github.com/Fred-Barclay/Termination/raw/master/resources/map_terminals_to_auto_open.gif)

## Install
Ready to install?

You can install via apm: `apm install termination`

Or navigate to the install tab in Atom’s settings view, and search for `termination`.

## Commands
| Command | Action | Default Keybind |
|---------|--------|:-----------------:|
| termination:new | Create a new terminal instance. | `alt-shift-t`<br>or<br>`cmd-shift-t` |
| termination:toggle | Toggle the last active terminal instance.<br>**Note:** This will create a new terminal if it needs to. | `` ctrl-` ``<br>(Control + Backtick) |
| termination:prev | Switch to the terminal left of the last active terminal. | `alt-shift-j`<br>or<br>`cmd-shift-j` |
| termination:next | Switch to the terminal right of the last active terminal. | `alt-shift-k`<br>or<br>`cmd-shift-k` |
| termination:insert-selected-text | Run the selected text as a command in the active terminal. | `alt-r`<br>or<br>`cmd-shift-r` |
| termination:insert-text | Bring up an input box for using IME and special keys. | –––––––––––– |
| termination:fullscreen | Toggle fullscreen for active terminal. | `alt-shift-F` |
| termination:close | Close the active terminal. | `alt-shift-x`<br>or<br>`cmd-shift-x` |
| termination:close-all | Close all terminals. | –––––––––––– |
| termination:rename | Rename the active terminal. | –––––––––––– |
| termination:focus | Focus an already-open terminal. | `ctrl-alt-f`<br>or<br>`cmd-alt-f` |

---
A fork of [platformio-atom-ide-terminal](https://github.com/platformio/platformio-atom-ide-terminal).  
