protocol
moveCamera
	| totalSize halfSize |
	
	totalSize := timeline size * self distanceBetweenNodes.
	halfSize := canvas extent x // 2.
	
	halfSize > totalSize ifTrue: [ ^ self ].
	
	canvas camera translateTo: (totalSize  - halfSize)@0
	