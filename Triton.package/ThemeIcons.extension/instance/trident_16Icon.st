*Triton
trident_16Icon
	"Private - Generated method"
	^icons 
			at: #trident_16Icon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self trident_16IconContents readStream) ].