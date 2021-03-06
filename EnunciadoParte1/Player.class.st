"
""soy un jugador""
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	dice:		<Object>
	playerName:		<Object>


    Implementation Points
"
Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'playerName',
		'position'
	],
	#category : #EnunciadoParte1
}

{ #category : #creation }
Player class >> call: aName [
	^ self new
		initializeWithName: aName;
		yourself
]

{ #category : #initialize }
Player >> initializeWithName: aName [
	playerName := aName.
	position := 0
]

{ #category : #actions }
Player >> move: aNumberOfSteps [ 
	 position := aNumberOfSteps 
]

{ #category : #'as yet unclassified' }
Player >> name [
	^ playerName
]

{ #category : #actions }
Player >> position [ 
	^ position
]

{ #category : #actions }
Player >> takeADiceWithFacesAndPlays: aNumberOfFaces [
^ 2
	
]
