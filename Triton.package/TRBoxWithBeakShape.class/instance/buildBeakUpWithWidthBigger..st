private
buildBeakUpWithWidthBigger: aBuilder
	| ratio |
	
	ratio := 15 * self height / self width / 100.
	aBuilder
		absolute;
		moveTo: -0.85 @ -0.85;

		lineTo: (ratio negated)@ -0.85;
		lineTo: 0 @ -1;
		lineTo: (ratio)@ -0.85;

		lineTo: 0.85 @ -0.85;
		lineTo: 0.85 @ 0.85;
		lineTo: -0.85 @ 0.85;
		lineTo: -0.85 @ -0.85