initialize
initialize

	super initialize.

	boxes := OrderedCollection new asValueHolder.
	boxes whenChangedDo: [ self updateView ]