private
buildBeakUpWith: aBuilder

	self width >= self height
		ifTrue: [ self buildBeakUpWithWidthBigger: aBuilder ]
		ifFalse: [ self buildBeakUpWithHeightBigger: aBuilder ]