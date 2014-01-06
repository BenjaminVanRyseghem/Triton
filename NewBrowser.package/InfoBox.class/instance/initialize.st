initialize
initialize
	
	computationBlock := [ #() ] asValueHolder.
	computationBlock whenChangedDo: [ self updateView ].
	context := InfoContext new asValueHolder.
	action := [ :item | ] asValueHolder.
	
	title := [ '' ] asValueHolder.
	defaultTitle := '' asValueHolder.
	
	super initialize.