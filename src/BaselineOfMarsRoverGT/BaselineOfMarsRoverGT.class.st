Class {
	#name : #BaselineOfMarsRoverGT,
	#superclass : #BaselineOf,
	#category : #BaselineOfMarsRoverGT
}

{ #category : #baseline }
BaselineOfMarsRoverGT >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'MarsRoverGT'
		]
]
