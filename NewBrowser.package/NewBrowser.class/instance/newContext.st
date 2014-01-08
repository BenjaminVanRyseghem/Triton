private-navigation
newContext
	| context |
	
	self updateTitle.
	context := self newInfoBoxContext.
	bar context: context.
	
	^ context