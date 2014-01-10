private
popupForEdge: edge node: node event: event
	| element offset width height position newView morph up |
	
	height := 50.
	
	position := edge positionInWorld.
	up := World extent y - position y > height.
	newView := RoassalModel new
		script: [ :v :c || label |
			label := RTLabel new
				height: 16;
				color: (Color fromHexString: '555555');
				text: node sourceLink longName.
			width := (label widthFor: nil) + height.
			c color: Color transparent.
			element := RTElement new + (RTBoxWithBeak new 
				width: width;
				height: height; 
				color: (Color fromHexString: 'ededed');
				beakUp: up).
			v add: element .
			v add: ((RTElement new + label) translateTo: 0@(-4) ; yourself).
			].
	morph := newView buildWithSpec.
	morph extent: width@height.
	morph openInWorld.

	
	offset := 4.
	up
		ifTrue: [ morph center: (position) + (0@((height // 2) + offset)) ]
		ifFalse: [ morph center: (position) - (0@((height // 2) + offset)) ].
	
	morph on: #mouseLeave send: #delete to: morph.
	edge on: TRMouseLeave do: [ morph delete ]