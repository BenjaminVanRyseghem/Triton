private
addNode: aNode for: aLinkClass
	| last link |
	
	last := nodes last.
	link := aLinkClass
		from: last
		to: aNode.
		
	nodes addLast: aNode.
	^ aNode
	

	