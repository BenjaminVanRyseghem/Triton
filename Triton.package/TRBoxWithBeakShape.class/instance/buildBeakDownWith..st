private
buildBeakDownWith: aBuilder

	self width >= self height
		ifTrue: [ self buildBeakDownWithWidthBigger: aBuilder ]
		ifFalse: [ self buildBeakDownWithHeightBigger: aBuilder ]