initialization
initializeWidgets

	super initializeWidgets.
	list := self newList.
	
	list 
		whenSelectedItemChanged: [ :item :index | self box action cull: item cull: index ];
		displayBlock: [ :each | self buildTabbedNameOf: each ]