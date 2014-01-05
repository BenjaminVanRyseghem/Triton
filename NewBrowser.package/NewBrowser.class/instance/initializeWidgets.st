initialization
initializeWidgets

	packageButton := self newButton.
	classButton := self newButton.
	protocolButton := self newButton.
	methodButton := self newButton.
	bar := self instantiate: BoxesBar.
	text := self newText.

	packageButton
		label: 'Package';
		icon: Smalltalk ui icons packageIcon;
		shortcut: $p command shift;
		action: [ self popupPackages ].

	classButton
		label: 'Class';
		icon: Smalltalk ui icons classIcon;
		shortcut: $c command shift;
		action: [ self popupClasses ].

	protocolButton
		label: 'Protocol';
		shortcut: $t command shift;
		action: [ self popupProtocols ].

	text
		aboutToStyle: true;
		bindKeyCombination: $p command shift toAction: [ packageButton performAction ];
		acceptBlock: [ :newText :notifyier | self compileNewMethodFrom: newText notifying: notifyier ].

	methodButton
		label: 'Method';
		shortcut: $m command shift;
		action: [ self popupMethods ].

	self focusOrder
		add: packageButton;
		add: classButton;
		add: protocolButton;
		add: methodButton;
		add: text;
		add: bar.
		
	self bindKeyCombination: $f command, $c command toAction: [ self findClass ]