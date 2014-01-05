initialize
initialize
	
	computationBlock := [ #() ] asValueHolder.
	computationBlock whenChangedDo: [ self updateView ].
	context := InfoContext new asValueHolder.
	
	title := [ '' ] asValueHolder.
	defaultTitle := '' asValueHolder.
	
	super initialize.