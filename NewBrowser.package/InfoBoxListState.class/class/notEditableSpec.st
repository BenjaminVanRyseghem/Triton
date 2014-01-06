specs
notEditableSpec
	
	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow: #title height: self buttonHeight;
				add: #list
		];
	yourself