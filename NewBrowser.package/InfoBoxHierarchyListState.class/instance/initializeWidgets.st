initialization
initializeWidgets

	super initializeWidgets.
	list := self newList.
	
	list displayBlock: [ :each | self buildTabbedNameOf: each ]