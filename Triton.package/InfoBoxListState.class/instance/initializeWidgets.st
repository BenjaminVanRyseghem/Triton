initialization
initializeWidgets

	super initializeWidgets.

	title := self newLabel.
	list := self newList.
	button := self newButton.
	
	list 
		autoDeselect: false;
		whenListChanged: [ list setSelectedIndex: 0 ];
		whenSelectedItemChanged: [ :item :index | (item notNil and: [ index ~= 0 ])
			ifTrue: [ self box action cull: item cull: index ] ];
		backgroundColorBlock: [ :item :index | self box backgroundColorFor: item at: index ].
	
	button 
		icon: Smalltalk ui icons configurationIcon;
		action: [ self box showEdit ].
		
	title whenBuiltDo: [ title emphasis: 1 ].
	
	self focusOrder
		add: list