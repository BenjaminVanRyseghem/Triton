private
sortDataFor: method
	| methods |
	
	methods := self retrieveDataFor: method.
	^ self sortDataFor: method with: methods