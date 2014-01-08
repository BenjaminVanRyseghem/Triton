protocol
addManualNavigationContext: aContext

	^ self 
		addNode: (NavigationNode forContext: aContext)
		for: ManualNavigationLink