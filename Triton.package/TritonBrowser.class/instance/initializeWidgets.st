initialization
initializeWidgets
	| rtTimeline |
	
	packageButton := self newButton.
	classButton := self newButton.
	protocolButton := self newButton.
	methodButton := self newButton.
	text := self newText.
	timelineWidget := self instantiate: RoassalModel.

	packageButton
		label: 'Package';
		icon: Smalltalk ui icons packageIcon;
		shortcut: $p command shift;
		menu: self buildPackageMenu;
		action: [ self popupPackages ].

	classButton
		label: 'Class';
		enabled: false;
		icon: self defaultClassIcon;
		shortcut: $c command shift;
		menu: self buildClassMenu;
		action: [ self popupClasses ].

	protocolButton
		label: 'Protocol';
		enabled: false;
		shortcut: $t command shift;
		menu: self buildProtocolMenu;
		action: [ self popupProtocols ].

	text
		aboutToStyle: true;
		bindKeyCombination: $p command shift toAction: [ packageButton performAction ];
		acceptBlock: [ :newText :notifyier | self compileNewMethodFrom: newText notifying: notifyier ].

	methodButton
		label: 'Method';
		enabled: false;
		shortcut: $m command shift;
		menu: self buildMethodMenu;
		action: [ self popupMethods ].

	rtTimeline := RTTimeline new
		timeline: timeline;
		yourself.
		
	timelineWidget script: [ :view :canvas | rtTimeline drawTimelineOn: view canvas: canvas ].

	self focusOrder
		add: packageButton;
		add: classButton;
		add: protocolButton;
		add: methodButton;
		add: barManager classBar;
		add: text;
		add: barManager methodBar.
		
	self bindKeyCombination: $f command, $c command toAction: [ self findClass ]