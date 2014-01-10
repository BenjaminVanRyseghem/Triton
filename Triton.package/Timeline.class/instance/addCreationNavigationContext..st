protocol
addCreationNavigationContext: aContext

	^ self 
		addNode: (NavigationNode forContext: aContext)
		for: CreationNavigationLink