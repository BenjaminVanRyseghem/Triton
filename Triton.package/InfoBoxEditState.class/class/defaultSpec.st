specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed
		newColumn: [ :col | 
			col 
				newRow: [ :r | 
					r 
						add: #defaultTitleLabel width: 120;
						add: #defaultTitle
				] height: self toolbarHeight;
				newRow: [ :r | 
					r 
						add: #titleLabel width: 40;
						add: #openLabel width: 80; 
						add: #title;
						add: #closeLabel width: 10
				] height: self toolbarHeight;
				newRow: [ :r | 
					r 
						add: #block width: 40;
						add: #openLabel width: 80; 
						add: #textField;
						add: #closeLabel width: 10
				] height: self toolbarHeight;
				newRow: [ :r | ];
				newRow: [ :r | 
					r
						newColumn: [ :c | ];
						add: #ok width: self toolbarHeight + 4;
						add: #cancel width: self toolbarHeight
				] height: self toolbarHeight
		];
		yourself