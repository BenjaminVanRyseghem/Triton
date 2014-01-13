[![Triton](logo/logo128x128.png)](https://github.com/BenjaminVanRyseghem/Triton) Triton
==========

A prototype of a new browser for Pharo

## Getting started

### Fresh image

You can download the latests Triton image [here] (http://ezial.dyndns.org:9095/job/Triton/lastSuccessfulBuild/artifact/Triton.zip).

### Existing image

With this [script](https://raw.github.com/BenjaminVanRyseghem/Triton/master/install_Triton.sh) you can load Triton in an existing image.

    ./install_Triton Pharo.image

## How to

To open the new browser, simply evaluate:

    TritonBrowser new openWithSpec
    
## To add

- Triton shortcuts manager: allow on to redefine any shortcut.
- A smart box for messages sent in the current method
- Text to node popups
- A cmd+{digit} to reach a box
- Timeline compression
    
## Tips

### Shortcuts
Some shortcuts are already available (even if not documented)

- `Command+shift+$P`: open the packages list
- `Command+shift+$C`: open the class list
- `Command+shift+$T`: open the protocol list
- `Command+shift+$M`: open the methods list
- `Command+N, Command+T`: add a new protocol
- `Command+F, Command+C`: open class finder

### Snippets

To open a button opening a `TritonBrowser`

    ButtonModel new
    	action: [ TritonBrowser new openWithSpec ];
    	label: 'Open TritonBrowser';
    	openWithSpec
