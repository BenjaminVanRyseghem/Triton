private
addNode: aNode for: aLinkClass
	| link |
	
	link := aLinkClass
		from: last value
		to: aNode.
		
	last value: aNode.
	^ aNode
	

	