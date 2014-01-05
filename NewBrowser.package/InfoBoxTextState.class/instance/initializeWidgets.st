initialization
initializeWidgets

	title := self newLabel.
	text := self newText.
	button := self newButton.
	
	button 
		icon: Smalltalk ui icons configurationIcon;
		action: [ self box showEdit ].
		
	title whenBuiltDo: [ title emphasis: 1 ].
	
	self focusOrder
		add: text