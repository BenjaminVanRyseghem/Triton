initialize
initialize
	
	computationBlock := [ #() ] asValueHolder.
	computationBlock whenChangedDo: [ self updateView ].
	context := nil asValueHolder.
	
	title := [ '' ] asValueHolder.
	defaultTitle := '' asValueHolder.
	
	super initialize.