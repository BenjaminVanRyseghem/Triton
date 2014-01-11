accessing
packages
	| packages |
	
	packages := super packages select: [ :e | e name matchesRegexIgnoringCase: regex ].
	^ packages gather: [:p | 
		p classTags
			ifEmpty: [ { p } ]
			ifNotEmpty: [ :c | c sorted: [ :a :b | a name < b name ] ] ]