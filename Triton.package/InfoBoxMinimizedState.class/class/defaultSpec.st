as yet unclassified
defaultSpec
	<spec:#default>
	
	^ SpecLayout composed
		newRow: [ :r | r add: #title ; add: #minimizedButton width: self buttonHeight ];
		yourself