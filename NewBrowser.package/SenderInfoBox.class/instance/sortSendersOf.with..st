private
sortSendersOf: method with: senders
	| result |
	
	lastSeparators := OrderedCollection new.
	result := OrderedCollection new.
	senders sort: [ :a :b | a lastModificationTime > b lastModificationTime ].
	senders size <= 3 ifTrue: [ ^ senders ].
	lastSeparators add: 3.
	result addAll: (senders removeFirst: 3).
	senders copy
		do: [ :e | 
			e methodClass = self inputClass
				ifTrue: [ 
					result add: e.
					senders remove: e ] ].
	lastSeparators add: result size.
	senders copy
		do: [ :e | 
			e package = self inputPackage
				ifTrue: [ 
					result add: e.
					senders remove: e ] ].
	lastSeparators add: result size.
	result addAll: senders.
	^ result