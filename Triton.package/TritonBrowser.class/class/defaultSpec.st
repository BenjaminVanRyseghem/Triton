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
						add: #classBar right: 0.75;
						addSplitter;
						newColumn: [ :c | 
							c 
								add: #text;
								add: #timelineWidget height: 30 ] left: 0.25 right: 0.25;
						addSplitter;
						add: #methodBar left: 0.75
				]
		];
		yourself