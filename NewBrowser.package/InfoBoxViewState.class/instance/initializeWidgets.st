initialization
initializeWidgets

	title := self newLabel.
	list := self newList.
	button := self newButton.
	
	button 
		icon: Smalltalk ui icons configurationIcon;
		action: [ self box showEdit ].
		
	title whenBuiltDo: [ title emphasis: 1 ]