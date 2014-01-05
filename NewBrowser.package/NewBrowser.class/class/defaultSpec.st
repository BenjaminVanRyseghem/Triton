specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :col |
			col
				newRow: [ :r |
					r add: #packageButton; add: #classButton; add: #protocolButton; add: #methodButton
				] height: self toolbarHeight;
				newRow: [ :r | 
					r
						add: #text;
						addSplitter;
						add: #bar
				]
		];
		yourself