protocol
stringDescription

	^ String streamContents: [ :s | 
		self nodesDo: [ :e |
			s << '[ ' << e stringDescription << ' ]'.
			s << e destinationLink stringDescription ] ]