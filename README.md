# Doom Config
This is my config for my Doom Emacs.
It will be updated over time as I continue to add to my configuration.


## FONTS
This uses the Fira Code font a long side the `fira-code-mode` package, as it enables font ligatures.
I also use Ubuntu font as the variable pitch font.

## Packages

### BLAMER
I use blamer to see line blame, so I can see whenever the last change to line was made.

### LSP
I have set some custom configuration on LSP.
Doom Emacs default turns off docs whenever you are writing code, so for this I have turned it on.
I also show modeline diagnostics, and headline breadcrumbs.

LSP lens and completion is also turned on, but can be switched off by using `nil` instead of `t`.

### WAKATIME CONFIG

