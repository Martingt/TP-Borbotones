Class {
	#name : #Board,
	#superclass : #Object,
	#instVars : [
		'stepsToWin'
	],
	#classInstVars : [
		'numberOfStepsToWin',
		'numberOfPLayers'
	],
	#category : #EnunciadoParte1
}

{ #category : #Initialize }
Board class >> initializeWithStepsToWin: aNumberOfStepsToWin andPlayers: aNumberOfplayers [ 
	numberOfStepsToWin := aNumberOfStepsToWin.
	numberOfPLayers := aNumberOfplayers 
	
]

{ #category : #Description }
Board class >> players [
	^ numberOfPLayers
]

{ #category : #Description }
Board class >> stepsToWin [
	^ numberOfStepsToWin
]

{ #category : #Description }
Board >> stepsToWin [
	^ stepsToWin
]
