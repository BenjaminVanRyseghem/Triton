initialize
initialize

	super initialize.

	context whenChangedDo: [ :newContext :oldContext |
		(newContext isNil or: [ oldContext isNil or: [ newContext method = oldContext method ] ])
			ifFalse: [ self state updateView ] ]