private-navigation
newContext
	| context |
	
	self updateTitle.
	context := self newInfoBoxContext.
	barManager context: context.
	
	^ context