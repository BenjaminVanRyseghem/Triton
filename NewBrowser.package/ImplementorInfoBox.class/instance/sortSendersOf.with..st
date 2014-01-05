private
sortSendersOf: method with: implementors
	| result |
	
	lastSeparators := OrderedCollection new.
	result := OrderedCollection new.
	implementors sort: [ :a :b | a lastModificationTime > b lastModificationTime ].
	implementors size <= 3 ifTrue: [ ^ implementors ].
	lastSeparators add: 3.
	result addAll: (implementors removeFirst: 3).
	implementors copy
		do: [ :e | 
			e methodClass = self inputClass
				ifTrue: [ 
					result add: e.
					implementors remove: e ] ].
	lastSeparators add: result size.
	implementors copy
		do: [ :e | 
			e package = self inputPackage
				ifTrue: [ 
					result add: e.
					implementors remove: e ] ].
	lastSeparators add: result size.
	result addAll: implementors.
	^ result