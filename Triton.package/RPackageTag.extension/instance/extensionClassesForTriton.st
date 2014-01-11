*Triton
extensionClassesForTriton

	^ self name = package name
		ifTrue: [ package extensionClassesForTriton ]
		ifFalse: [ #() ]