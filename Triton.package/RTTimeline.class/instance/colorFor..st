private
colorFor: aNode

	^ (timeline isLast: aNode)
		ifTrue: [ Color orange ]
		ifFalse: [ aNode color ]