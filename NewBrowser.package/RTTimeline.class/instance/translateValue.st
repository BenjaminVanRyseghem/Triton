private
translateValue
	| offset |
	
	offset := canvas extent x // 2 - 30.
	
	^ self timeline nodes size * self distanceBetweenNodes < offset
		ifTrue: [ 0 @ 0 ]
		ifFalse: [ "offset negated" 0 @ 0 ]