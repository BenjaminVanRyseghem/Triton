initialize
initialize
	
	computationBlock := [ #() ] asValueHolder.
	computationBlock whenChangedDo: [ self updateView ].
	context := InfoContext new asValueHolder.
	action := [ :item | self halt ] asValueHolder.
	
	title := [ '' ] asValueHolder.
	defaultTitle := '' asValueHolder.
	
	super initialize.