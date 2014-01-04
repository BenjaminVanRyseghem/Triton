specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newRow: [ :row |
			row
				newColumn: [ :col |
					col 
						newRow: [ :r |
							r add: #packageButton; add: #classButton; add: #protocolButton 
						] height: self toolbarHeight;
						add: #methods;
						add: #text
				] right: 0.3;
				addSplitter;
				add: #bar left: 0.7
		];
		yourself