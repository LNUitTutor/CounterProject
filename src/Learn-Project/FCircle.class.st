Class {
	#name : 'FCircle',
	#superclass : 'Figure',
	#instVars : [
		'r'
	],
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'calculating' }
FCircle >> area [

	^ Float pi * r squared 
]

{ #category : 'calculating' }
FCircle >> perimeter [

	^ 2.0 * Float pi * r
]

{ #category : 'printing' }
FCircle >> printOn: aStream [

	aStream
		nextPutAll: 'Circle(';
		print: r;
		nextPut: $)
]
