initialization
initializeWidgets

	title := self newLabel.
	list := self instantiate: NewListModel.
	button := self newButton.
	
	list separatorBlock: [ :item :index | self box separatorAfter: index ].
	
	button 
		icon: Smalltalk ui icons configurationIcon;
		action: [ self box showEdit ].
		
	title whenBuiltDo: [ title emphasis: 1 ].
	
	self focusOrder
		add: list