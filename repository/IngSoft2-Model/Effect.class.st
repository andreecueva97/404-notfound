Class {
	#name : #Effect,
	#superclass : #Object,
	#instVars : [
		'effectNumber',
		'type',
		'positionOnBoard'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #asserting }
Effect class >> assertNumberGreaterThanZero: boardNumber [

	boardNumber > 0
		ifFalse: [ InstanceCreationFailed signal: 'Must assign a positive number to the square' ]
]

{ #category : #accessing }
Effect >> effectNumber [

	^ effectNumber.
]

{ #category : #initialization }
Effect >> initialize: boardNumber with: effect type: name [

	positionOnBoard := boardNumber.
	effectNumber := effect.
	type := name.
]

{ #category : #accessing }
Effect >> type [

	^ type.
]