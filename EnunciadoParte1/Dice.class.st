"
A dice
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

{ #category : #Creation }
Dice class >> assertValidFaces: aNumberOfFaces [
	aNumberOfFaces > 3
		ifFalse: [ self error: 'Number of faces must be 4 or greater' ]
]

{ #category : #Creation }
Dice class >> withFaces: aNumberOfFaces [
	self assertValidFaces: aNumberOfFaces.
	^ self new
		initializeWithFaces: aNumberOfFaces;
		yourself
]

{ #category : #Initialize }
Dice >> initializeWithFaces: aNumberOfFaces [
	numberOfFaces := aNumberOfFaces.
	random := Random new
]

{ #category : #Actions }
Dice >> numberOfFaces [
	^ numberOfFaces
]

{ #category : #Actions }
Dice >> roll [
	^ (random next * numberOfFaces) floor + 1
]
