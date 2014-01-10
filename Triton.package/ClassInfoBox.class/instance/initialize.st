initialize
initialize

	super initialize.

	context whenChangedDo: [ :newContext :oldContext |
		newContext klass = oldContext klass
			ifFalse: [ self state updateView ] ]