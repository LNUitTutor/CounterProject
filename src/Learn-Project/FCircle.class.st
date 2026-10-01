"
Клас моделює геометричну фігуру круг.
Круг задають величиною радіусу
"
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

{ #category : 'instance creation' }
FCircle class >> new: aRadius [

	^ self basicNew r: aRadius
]

{ #category : 'calculating' }
FCircle >> area [

	^ Float pi * r squared 
]

{ #category : 'initialization' }
FCircle >> initialize [

	r := 1
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

{ #category : 'accessing' }
FCircle >> r [

	^ r
]

{ #category : 'accessing' }
FCircle >> r: aNumber [

	r := aNumber max: self class minimalSize 
]
