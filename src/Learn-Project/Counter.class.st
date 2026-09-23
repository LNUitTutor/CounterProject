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
