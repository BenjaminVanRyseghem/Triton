protocol
stringDescription

	^ String streamContents: [ :s | 
		self nodes do: [ :e |
			s << '[ ' << e stringDescription << ' ]'.
			s << e destinationLink stringDescription ] ]