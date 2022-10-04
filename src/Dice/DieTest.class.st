Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DieTest >> testCreationIsOk [
|d|
d:= Die withFaces: 20.
self assert: d faces equals: 20
]

{ #category : #'as yet unclassified' }
DieTest >> testinitialise [
|d|
d:= Die new.
self assert: d faces equals:6
]

{ #category : #'as yet unclassified' }
DieTest >> testroll [
|d|
d:= Die new.
10 timesRepeat: 
[self assert:( d roll between:  1 and:  6 )]
]
