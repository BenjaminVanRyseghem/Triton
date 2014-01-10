initialization
initializeWidgets

	super initializeWidgets.
	list := self newList.
	
	list 
		autoDeselect: false;
		whenSelectedItemChanged: [ :item :index | self box action cull: item cull: index ];
		displayBlock: [ :each | self buildTabbedNameOf: each ]