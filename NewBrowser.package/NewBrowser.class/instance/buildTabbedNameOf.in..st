private
buildTabbedNameOf: anElement in: hierarchy
			
	| tab result size |
	
	tab := '   '.
	size := hierarchy indentationFor: anElement.
	
	result := String new: (size * (tab size)) streamContents: [ :s|
		1 to: size do: [:i | s nextPutAll: tab ]].

	^ package value
		ifNil: [result, anElement name]
		ifNotNil: [ :p | 
			(p includesClass: anElement)
				ifTrue: [ result, anElement name ]
				ifFalse: [ (result , anElement name) asText 
					addAttribute: (TextColor color: self extensionColor);
					yourself ] ]