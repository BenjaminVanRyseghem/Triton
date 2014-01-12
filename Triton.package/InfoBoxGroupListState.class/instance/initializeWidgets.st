initialization
initializeWidgets

	super initializeWidgets.
	
	list 
		autoDeselect: false;
		whenListChanged: [ list setSelectedIndex: 0 ];
		whenSelectedItemChanged: [ :item :index | (item notNil and: [ index ~= 0 ])
			ifTrue: [ self box action cull: item cull: index ] ].