Triton
==========

A prototype of a new browser for Pharo

### Getting started

You can download the latests Triton image [here] (http://ezial.dyndns.org:9095/job/Triton/lastSuccessfulBuild/artifact/Triton.zip).

### How to

To open the new browser, simply evaluate:

    TritonBrowser new openWithSpec
    
### Tips

#### Shortcuts
Some shortcuts are already available (even if not documented)

- `Command+shift+$P`: open the packages list
- `Command+shift+$C`: open the class list
- `Command+shift+$T`: open the protocol list
- `Command+shift+$M`: open the methods list
- `Command+N, Command+T`: add a new protocol
- `Command+F, Command+C`: open class finder

#### Snippets

To open a button opening a `NewBrowser`

    ButtonModel new
    	action: [ TritonBrowser new openWithSpec ];
    	label: 'Open TritonBrowser';
    	openWithSpec
