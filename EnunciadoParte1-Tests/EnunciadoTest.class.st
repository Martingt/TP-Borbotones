"
Enunciado Tests
"
Class {
	#name : #EnunciadoTest,
	#superclass : #TestCase,
	#category : #'EnunciadoParte1-Tests-EnunciadoParte1-Tests'
}

{ #category : #tests }
EnunciadoTest >> testBoardOf5StepsToWinAnd5Players [
	| board |
	board := Board initializeWithStepsToWin: 5 andPlayers: 5.
	self assert: board stepsToWin equals: 5.
	self assert: board players equals: 5
]

{ #category : #tests }
EnunciadoTest >> testDiceCantHaveLessThanFourFaces [
	self should: [ Dice withFaces: 3 ] raise: Error.
	self should: [ Dice withFaces: 0 ] raise: Error.
	self should: [ Dice withFaces: -1 ] raise: Error
]

{ #category : #tests }
EnunciadoTest >> testDiceRollsAndReturnsAValidNumber [
	| fourFacesDice |
	fourFacesDice := Dice withFaces: 4.
	self assert: fourFacesDice roll > 1.
	self assert: fourFacesDice roll <= 4
]

{ #category : #tests }
EnunciadoTest >> testFourFaceDiceHasSixFaces [
	| sixFaceDice |
	sixFaceDice := Dice withFaces: 4.
	self assert: sixFaceDice numberOfFaces equals: 4
]
