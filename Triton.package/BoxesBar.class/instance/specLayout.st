protocol
specLayout
	| layout |
	layout := SpecLayout composed.
	layout newColumn: [ :c || flag |
		flag := false.
		self boxes doWithIndex: [ :e :index | 
			e minimized
				ifTrue: [ c add: ('s', index asString) asSymbol height: self class toolbarHeight ]
				ifFalse: [ 
					flag := true.
					c add: ('s', index asString) asSymbol ] ].
		flag ifFalse: [ c newRow: [ :r | ] ] ].
	^ layout