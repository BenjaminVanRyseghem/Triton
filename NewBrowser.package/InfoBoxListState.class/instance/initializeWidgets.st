initialization
initializeWidgets

	title := self newLabel.
	list := self newList.
	button := self newButton.
	
	list backgroundColorBlock: [ :item :index | self box backgroundColorFor: item at: index ].
	
	button 
		icon: Smalltalk ui icons configurationIcon;
		action: [ self box showEdit ].
		
	title whenBuiltDo: [ title emphasis: 1 ].
	
	self focusOrder
		add: list