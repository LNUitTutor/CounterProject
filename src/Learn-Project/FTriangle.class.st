"
Клас моделює геометричну фігуру трикутник.
Трикутник задають трьома величинами: довжини двох сторін та величина кута між ними (в градусах)
"
Class {
	#name : 'FTriangle',
	#superclass : 'Figure',
	#instVars : [
		'a',
		'b',
		'gamma'
	],
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'as yet unclassified' }
FTriangle class >> maximalAngle [

	^ 179
]

{ #category : 'as yet unclassified' }
FTriangle class >> minimalAngle [

	^ 1
]

{ #category : 'accessing' }
FTriangle >> a [

	^ a
]

{ #category : 'accessing' }
FTriangle >> a: aNumber [

	a := aNumber max: self class minimalSize 
]

{ #category : 'calculating' }
FTriangle >> area [

	^ 0.5 * self a * self b * self gamma degreesToRadians sin
]

{ #category : 'accessing' }
FTriangle >> b [

	^ b
]

{ #category : 'accessing' }
FTriangle >> b: aNumber [

	b := aNumber max: self class minimalSize
]

{ #category : 'accessing' }
FTriangle >> c [

	^ (a squared + b squared - (2 * a * b * gamma degreesToRadians cos))  sqrt
]

{ #category : 'accessing' }
FTriangle >> gamma [

	^ gamma
]

{ #category : 'accessing' }
FTriangle >> gamma: aNumber [

	gamma := (aNumber max: self class minimalAngle) min: self class maximalAngle 
]

{ #category : 'initialization' }
FTriangle >> initialize [ 

	a := 3.
	b := 4.
	gamma := 90
]

{ #category : 'calculating' }
FTriangle >> perimeter [

	^ self a + self b + self c
]

{ #category : 'printing' }
FTriangle >> printOn: aStream [ 

	aStream
		nextPutAll: 'Triangle<';
		print: self a;
		nextPut: $;;
		print: self b;
		nextPut: $;;
		print: self gamma;
		nextPut: $>
]
