protocol
specLayout
	| layout |
	layout := SpecLayout composed.
	layout newColumn: [ :c | self boxes doWithIndex: [ :e :index | c add: ('s', index asString) asSymbol ] ].
	^ layout