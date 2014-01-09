protocol
addImplementorContext: aContext

	^ self 
		addNode: (NavigationNode forContext: aContext)
		for: ImplementorLink