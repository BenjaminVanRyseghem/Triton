protocol
addSenderContext: aContext

	^ self 
		addNode: (NavigationNode forContext: aContext)
		for: SenderLink