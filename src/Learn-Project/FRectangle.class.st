Class {
	#name : 'FRectangle',
	#superclass : 'Figure',
	#instVars : [
		'a',
		'b'
	],
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'constants' }
FRectangle class >> minimalSize [

	^ 0.1
]

{ #category : 'instance creation' }
FRectangle class >> newA: length andB: width [ 
	| r |
	r := self basicNew.
	r a: length ; b: width .
	^ r
]

{ #category : 'accessing' }
FRectangle >> a [
	^ a
]

{ #category : 'accessing' }
FRectangle >> a: anInteger [ 
	a := anInteger max: self class minimalSize 
]

{ #category : 'calculating' }
FRectangle >> area [
	^ self a * self b
]

{ #category : 'accessing' }
FRectangle >> b [
	^ b
]

{ #category : 'accessing' }
FRectangle >> b: anInteger [ 
	b := anInteger max: self class minimalSize
]

{ #category : 'initialization' }
FRectangle >> initialize [

	a := 3.
	b := 4
]

{ #category : 'calculating' }
FRectangle >> perimeter [
	^ (a + b) * 2
]

{ #category : 'printing' }
FRectangle >> printOn: aStream [

	aStream
		nextPutAll: 'Rectangle[';
		print: a;
		nextPut: $x;
		print: b;
		nextPut: $]
]
