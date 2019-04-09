"
Player that has a name and a dice.
"
Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'playerName',
		'dice'
	],
	#category : #EnunciadoParte1
}

{ #category : #creation }
Player class >> call: aName withADiceWithANumberOfFaces: aNumberOfFaces [
	^ self new
		initializeWithName: aName
			andWithADiceWithANumberOfFaces: aNumberOfFaces;
		yourself
]

{ #category : #actions }
Player >> dice [
	^ dice
]

{ #category : #initialize }
Player >> initializeWithName: aName andWithADiceWithANumberOfFaces: aNumberOfFaces [
	playerName := aName.
	dice := Dice withFaces: aNumberOfFaces
]
