initialization
initializeWidgets

	packageButton := self newButton.
	classButton := self newButton.
	protocolButton := self newButton.
	methods := self newList.
	bar := self instantiate: BoxesBar.
	text := self newText.
	
	packageButton 
		label: 'Package';
		action: [ self popupPackages ].
		
	classButton
		label: 'Class';
		action: [ self popupClasses ].
		
	protocolButton
		label: 'Class';
		action: [ self popupProtocols ].
		
	methods
		displayBlock: [ :item | item selector, ' (', item protocol ,')' ]