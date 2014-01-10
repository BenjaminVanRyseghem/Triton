as yet unclassified 
addHierarchyContext: aContext 

	^ self 
		addNode: (NavigationNode forContext: aContext)
		for: HierarchyLink