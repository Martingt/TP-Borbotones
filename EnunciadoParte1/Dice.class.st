"
A dice with a number of faces.
"
Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'numberOfFaces',
		'random'
	],
	#category : #EnunciadoParte1
}

{ #category : #creation }
Dice class >> assertValidFaces: aNumberOfFaces [
	aNumberOfFaces > 3
		ifFalse: [ self error: 'Number of faces must be 4 or greater' ]
]

{ #category : #creation }
Dice class >> withFaces: aNumberOfFaces [
	self assertValidFaces: aNumberOfFaces.
	^ self new
		initializeWithFaces: aNumberOfFaces;
		yourself
]

{ #category : #initialize }
Dice >> initializeWithFaces: aNumberOfFaces [
	numberOfFaces := aNumberOfFaces.
	random := Random new
]

{ #category : #actions }
Dice >> numberOfFaces [
	^ numberOfFaces
]

{ #category : #actions }
Dice >> roll [
	^ (random next * numberOfFaces) floor + 1
]
