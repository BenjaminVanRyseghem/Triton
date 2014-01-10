protocol
drawTimelineOn: aView canvas: aCanvas
	view := aView.
	canvas := aCanvas.
	timeline whenChangedDo: [ self draw ].
	
	canvas color: (Color fromHexString: 'fefefe').
	view @ RTHorizontalDraggableView.
	
	self draw