hooks
computePath
	canvas ifNil: [ ^ self ].
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: -0.85 @ -0.85;
				lineTo: 0.85 @ -0.85;
				lineTo: 0.85 @ 0.85;
				
				lineTo: 0.15@ 0.85;
				lineTo: 0 @ 1;
				lineTo: -0.15@ 0.85;
				lineTo: -0.85 @ 0.85;
				lineTo: -0.85 @ -0.85 ]