specs
notEditableSpec
	
	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow:[ :r |
					r 
						add: #title;
						add: #minimizedButton width: self buttonHeight ] 
				height: self buttonHeight;
				add: #text
		];
	yourself