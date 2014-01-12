specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow:[ :r |
					r 
						add: #title;
						add: #button width: self buttonHeight;
						add: #minimizedButton width: self buttonHeight ] 
				height: self buttonHeight;
				add: #text
		];
	yourself