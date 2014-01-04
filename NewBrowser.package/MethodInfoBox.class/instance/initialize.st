initialize
initialize

	super initialize.

	inputMethod := nil asValueHolder.
	inputMethod whenChangedDo: [ self state updateView ]