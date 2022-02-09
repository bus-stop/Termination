module.exports =
  statusBar: null

  activate: ->

  deactivate: ->
    @statusBarTile?.destroy()
    @statusBarTile = null

  provideTerminationTerminal: ->
    updateProcessEnv: (variables) ->
      for name, value of variables
        process.env[name] = value
    run: (commands) =>
      @statusBarTile.runCommandInNewTerminal commands
    getTerminalViews: () =>
      @statusBarTile.terminalViews
    open: () =>
      @statusBarTile.runNewTerminal()

  provideRunInTerminal: ->
    run: (commands) =>
      @statusBarTile.runCommandInNewTerminal commands
    getTerminalViews: () =>
      @statusBarTile.terminalViews

  consumeStatusBar: (statusBarProvider) ->
    @statusBarTile = new (require './status-bar')(statusBarProvider)

  config:
    toggles:
      type: 'object'
      order: 1
      properties:
        autoClose:
          title: 'Close Terminal on Exit'
          description: 'Should the terminal close if the shell exits?'
          type: 'boolean'
          default: true
        autoName:
          title: 'Auto Name Terminal'
          description: 'Should the terminal name itself based on the directory
          of the current file open in your text editor?'
          type: 'boolean'
          default: true
        cursorBlink:
          title: 'Cursor Blink'
          description: 'Should the cursor blink when the terminal is active?'
          type: 'boolean'
          default: true
        runInsertedText:
          title: 'Run Inserted Text'
          description: 'Run text inserted via `termination:insert-text` as a
          command? **This will append an end-of-line character to input.**'
          type: 'boolean'
          default: true
        selectToCopy:
           title: 'Select To Copy'
           description: 'Copies text to clipboard when selection happens.'
           type: 'boolean'
           default: true
         loginShell:
           title: 'Login Shell'
           description: 'Use --login on zsh and bash.'
           type: 'boolean'
           default: true
        showToolbar:
          title: 'Show Toolbar'
          description: 'Show toolbar above terminal window.'
          type: 'boolean'
          default: true
        cloneTerminalPlus:
          title: 'Clone Terminal-Plus'
          description: 'Should there be a dedicated bottom panel for termination?
          This will give termination a similar appearance to terminal-plus.
          **Restart Required.**'
          type: 'boolean'
          default: true
    core:
      type: 'object'
      order: 2
      properties:
        autoRunCommand:
          title: 'Auto Run Command'
          description: 'Command to run on terminal initialization.'
          type: 'string'
          default: ''
        mapTerminalsTo:
          title: 'Map Terminals To'
          description: 'Map terminals to each file or folder. Default is no
          action or mapping at all. **Restart required.**'
          type: 'string'
          default: 'None'
          enum: ['None', 'File', 'Folder']
        mapTerminalsToAutoOpen:
          title: 'Auto Open a New Terminal (For Terminal Mapping)'
          description: 'Should a new terminal be opened for new items? **Note:**
           This works in conjunction with `Map Terminals To` above.'
          type: 'boolean'
          default: false
        scrollback:
          title: 'Scroll Back'
          description: 'How many lines of history should be kept?'
          type: 'integer'
          default: 1000
        shell:
          title: 'Shell Override'
          description: 'Override the default shell instance to launch.'
          type: 'string'
          default: do ->
            if process.platform is 'win32'
              path = require 'path'
              path.resolve(process.env.SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')
            else
              process.env.SHELL || '/bin/bash'
        shellArguments:
          title: 'Shell Arguments'
          description: 'Specify some arguments to use when launching the shell.'
          type: 'string'
          default: ''
        shellEnv:
          title: 'Shell Environment Variables'
          description: 'Specify some additional environment variables, space separated with the form `VAR=VALUE`'
          type: 'string'
          default: ''
        workingDirectory:
          title: 'Working Directory'
          description: 'Which directory should be the present working directory
          when a new terminal is made?'
          type: 'string'
          default: 'Project'
          enum: ['Home', 'Project', 'Active File']
    style:
      type: 'object'
      order: 3
      properties:
        animationSpeed:
          title: 'Animation Speed'
          description: 'How fast should the window animate? A value of 0 disables animation.'
          type: 'number'
          default: '1'
          minimum: '0'
          maximum: '100'
        fontFamily:
          title: 'Font Family'
          description: 'Override the terminal\'s default font family. **You must
           use a [monospaced font](https://en.wikipedia.org/wiki/List_of_typefaces#Monospace)!**'
          type: 'string'
          default: ''
        fontSize:
          title: 'Font Size'
          description: 'Override the terminal\'s default font size. **Please enter a pixel integer value only, i.e `6` or `10`**'
          type: 'string'
          default: ''
        defaultPanelHeight:
          title: 'Default Panel Height'
          description: 'Default height of a terminal panel. **You may enter a
          value in px, em, or %.**'
          type: 'string'
          default: '300px'
        theme:
          title: 'Theme'
          description: 'Select a theme for the terminal.'
          type: 'string'
          default: 'standard'
          enum: [
            'standard',
            'inverse',
            'linux',
            'grass',
            'homebrew',
            'man-page',
            'novel',
            'ocean',
            'pro',
            'red',
            'red-sands',
            'silver-aerogel',
            'solarized-dark',
            'solid-colors',
            'dracula',
            'Christmas',
            'github',
            'one-dark',
            'one-light',
            'bliss',
            'gruvbox',
            'PowerShell'
          ]
    iconColors:
      type: 'object'
      order: 5
      properties:
        red:
          title: 'Status Icon Red'
          description: 'Red color used for status icon.'
          type: 'color'
          default: 'red'
        orange:
          title: 'Status Icon Orange'
          description: 'Orange color used for status icon.'
          type: 'color'
          default: 'orange'
        yellow:
          title: 'Status Icon Yellow'
          description: 'Yellow color used for status icon.'
          type: 'color'
          default: 'yellow'
        green:
          title: 'Status Icon Green'
          description: 'Green color used for status icon.'
          type: 'color'
          default: 'green'
        blue:
          title: 'Status Icon Blue'
          description: 'Blue color used for status icon.'
          type: 'color'
          default: 'blue'
        purple:
          title: 'Status Icon Purple'
          description: 'Purple color used for status icon.'
          type: 'color'
          default: 'purple'
        pink:
          title: 'Status Icon Pink'
          description: 'Pink color used for status icon.'
          type: 'color'
          default: 'hotpink'
        cyan:
          title: 'Status Icon Cyan'
          description: 'Cyan color used for status icon.'
          type: 'color'
          default: 'cyan'
        magenta:
          title: 'Status Icon Magenta'
          description: 'Magenta color used for status icon.'
          type: 'color'
          default: 'magenta'
    customTexts:
      type: 'object'
      order: 6
      properties:
        customText1:
          title: 'Custom text 1'
          description: 'Text to paste when calling termination:insert-custom-text-1,
          $S is replaced by selection, $F is replaced by file name, $D is replaced
          by file directory, $L is replaced by line number of cursor, $$ is replaced by $'
          type: 'string'
          default: ''
        customText2:
          title: 'Custom text 2'
          description: 'Text to paste when calling termination:insert-custom-text-2'
          type: 'string'
          default: ''
        customText3:
          title: 'Custom text 3'
          description: 'Text to paste when calling termination:insert-custom-text-3'
          type: 'string'
          default: ''
        customText4:
          title: 'Custom text 4'
          description: 'Text to paste when calling termination:insert-custom-text-4'
          type: 'string'
          default: ''
        customText5:
          title: 'Custom text 5'
          description: 'Text to paste when calling termination:insert-custom-text-5'
          type: 'string'
          default: ''
        customText6:
          title: 'Custom text 6'
          description: 'Text to paste when calling termination:insert-custom-text-6'
          type: 'string'
          default: ''
        customText7:
          title: 'Custom text 7'
          description: 'Text to paste when calling termination:insert-custom-text-7'
          type: 'string'
          default: ''
        customText8:
          title: 'Custom text 8'
          description: 'Text to paste when calling termination:insert-custom-text-8'
          type: 'string'
          default: ''
