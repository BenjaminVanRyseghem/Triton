protocol
draw
	| rtNodes nodes edges |
	
	view elements do: [ :e | view removeElement: e ].
	
	nodes := timeline nodes copy.
	rtNodes := Array new: nodes size.
	edges := Array new: nodes size - 1.
	nodes
		doWithIndex: [ :n :i | 
			| rtNode |
			rtNode := RTElement new
				+
					(RTEllipse new
						size: (self sizeFor: n);
						color: (self colorFor: n)).
			rtNode translateBy: (self translateValue) + (((i - 1) * self distanceBetweenNodes) @ 0).
			rtNode
				on: TRMouseEnter
				do: [ :e | self popupFor: rtNode event: e on: view ].
			rtNodes at: i put: rtNode.
			i > 1
				ifTrue: [ 
					| edge |
					edge := RTEdge from: (rtNodes at: i - 1) to: rtNode.
					edge + (RTLine new color: (self colorForLink: n sourceLink)).
					edges at: i - 1 put: edge ] ].
	rtNodes do: [ :e | view add: e ].
	edges do: [ :e | view add: e ].
	canvas signalUpdate.