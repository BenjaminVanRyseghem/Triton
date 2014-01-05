initialize
initialize

	super initialize.
	
	box whenChangedDo: [ :b | self updateViewFor: b ]