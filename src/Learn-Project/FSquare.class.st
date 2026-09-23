Class {
	#name : 'FSquare',
	#superclass : 'FRectangle',
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'constants' }
FSquare class >> minimalSize [

	^ 0.5
]

{ #category : 'initialization' }
FSquare >> a: anInteger [

	super a: anInteger.
	super b: anInteger
]

{ #category : 'initialization' }
FSquare >> b: anInteger [

	^ self
]

{ #category : 'initialization' }
FSquare >> initialize [

	self a: 3
]

{ #category : 'printing' }
FSquare >> printOn: aStream [

	aStream
		nextPutAll: 'Square[';
		print: a;
		nextPut: $]
]
