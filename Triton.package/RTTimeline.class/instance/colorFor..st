private
colorFor: aNode

	^ (timeline isLast: aNode)
		ifTrue: [ 
			aNode isDirty
				ifTrue: [ Color fromHexString: 'c94911' ]
				ifFalse: [ Color orange ] ]
		ifFalse: [ aNode color ]