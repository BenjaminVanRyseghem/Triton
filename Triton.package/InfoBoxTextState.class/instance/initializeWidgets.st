initialization
initializeWidgets

	super initializeWidgets.
	
	title := self newLabel.
	text := self newText.
	button := self newButton.
	
	text acceptBlock:  [ :newText :notyfier | self box action cull: newText cull: notyfier ].
	
	button 
		icon: Smalltalk ui icons configurationIcon;
		action: [ self box showEdit ].
		
	title whenBuiltDo: [ title emphasis: 1 ].
	
	self focusOrder
		add: text