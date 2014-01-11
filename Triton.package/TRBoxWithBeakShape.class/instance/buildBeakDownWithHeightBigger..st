private
buildBeakDownWithHeightBigger: aBuilder
	| ratio |
	
	ratio := 15 * self width / self height / 100.
	aBuilder
		absolute;
		moveTo: -0.85 @ -0.85;
		lineTo: 0.85 @ -0.85;
		lineTo: 0.85 @ (1-ratio);
		
		lineTo: 0.15 @ (1-ratio);
		lineTo: 0 @ 1;
		lineTo: -0.15 @ (1-ratio);
		
		lineTo: -0.85 @ (1-ratio);
		lineTo: -0.85 @ -0.85