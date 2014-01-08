initialization
initializeWidgets

	title := self newLabel.
	list := self newList.
	button := self newButton.
	
	list 
		whenSelectedItemChanged: [ :item :index | self box action cull: item cull: index ];
		backgroundColorBlock: [ :item :index | self box backgroundColorFor: item at: index ].
	
	button 
		icon: Smalltalk ui icons configurationIcon;
		action: [ self box showEdit ].
		
	title whenBuiltDo: [ title emphasis: 1 ].
	
	self focusOrder
		add: list