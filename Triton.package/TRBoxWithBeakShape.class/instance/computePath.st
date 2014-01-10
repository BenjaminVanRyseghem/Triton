hooks
computePath
	canvas ifNil: [ ^ self ].
	
	path := self athensCanvas
		createPath: [ :builder | 
			self beakUp
				ifTrue: [ self buildBeakUpWith: builder ]
				ifFalse: [ self buildBeakDownWith: builder ] ]