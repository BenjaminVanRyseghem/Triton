private-navigation
registerClassCreatedNavigation
	| context |
	
	context := self newContext.
	context classAdded.
	timeline addCreationNavigationContext: context