"
A board of steps to win X Number of players.
"
Class {
	#name : #Board,
	#superclass : #Object,
	#instVars : [
		'stepsToWin',
		'numberOfStepsToWin',
		'numberOfPLayers'
	],
	#category : #EnunciadoParte1
}

{ #category : #creation }
Board class >> WithStepsToWin: aNumberOfStepsToWin andPlayers: aNumberOfplayers [
	^ self new
		initializeWithStepsToWin: aNumberOfStepsToWin
			andPlayers: aNumberOfplayers;
		yourself
]

{ #category : #initialize }
Board >> initializeWithStepsToWin: aNumberOfStepsToWin andPlayers: aNumberOfplayers [
	numberOfStepsToWin := aNumberOfStepsToWin.
	numberOfPLayers := aNumberOfplayers
]

{ #category : #description }
Board >> players [
	^ numberOfPLayers
]

{ #category : #description }
Board >> stepsToWin [
	^ numberOfStepsToWin
]
