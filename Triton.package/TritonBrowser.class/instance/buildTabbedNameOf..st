private
buildTabbedNameOf: anElement
			
	| tab result size |
	
	tab := '   '.
	size := self box hierarchy indentationFor: anElement.
	
	result := String new: (size * (tab size)) streamContents: [ :s|
		1 to: size do: [:i | s nextPutAll: tab ]].

	^ package value
		ifNil: [result, anElement name]
		ifNotNil: [ :p | 
			(p includesClass: anElement)
				ifTrue: [ (result, anElement name) asStringMorph ]
				ifFalse: [ (result , anElement name) asStringMorph 
					color: self extensionColor;
					yourself ] ]