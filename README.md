NewBrowser
==========

A prototype of a new browser for Pharo

## How to

### install

NewBrowser is at an alpha stage, and depends on a lot of fixes

To load it into the latests Pharo, the following steps should be followed:

- load the latests [Spec] (https://github.com/SpecForPharo/spec)
- Evaluate the following `SpecDebugActionButton 
        addInstVarNamed: 'removeMe';
        removeInstVarNamed: 'removeMe'`

- Load slice __12413__
- Load slice __12565__
- Load slice __12570__
- Load slice __12576__
 
This should do the work :)

### open

To open the new browser, simply evaluate:

    NewBrowser new openWithSpec
    
## Tips

Some shortcuts are already available (even if not documented)

- `Command+shift+$P`: open the packages list
- `Command+shift+$C`: open the class list
- `Command+shift+$T`: open the protocol list
- `Command+shift+$M`: open the methods list
- `Command+N, Command+T`: add a new protocol
- `Command+F, Command+C`: open class finder
