private
sortSendersOf: method
	| implementors |
	
	implementors := method implementors.
	^ self sortSendersOf: method with: implementors