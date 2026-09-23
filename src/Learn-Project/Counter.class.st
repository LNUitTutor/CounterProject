"
Навчальний приклад. Клас зберігає лічильник - невід'ємне число
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'Learn-Project',
	#package : 'Learn-Project'
}

{ #category : 'instance creation' }
Counter class >> new: aNumber [

	^self basicNew count: aNumber
]

{ #category : 'accessing' }
Counter >> count [

	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [

	count := anInteger
]

{ #category : 'actions' }
Counter >> decrement [

	self count == 0 ifTrue: [
		self error: 'Can not decrease zero-counter' ].
	self count: self count - 1
]

{ #category : 'actions' }
Counter >> increment [

	count := count + 1
	"self count: self count + 1"
]

{ #category : 'initialization' }
Counter >> initialize [

	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [

	aStream
		nextPutAll: 'Counter(';
		print: count;
		nextPut: $)
]
