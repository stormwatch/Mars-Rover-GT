Class {
	#name : #BaselineOfMarsRoverGT,
	#superclass : #BaselineOf,
	#category : #BaselineOfMarsRoverGT
}

{ #category : #convenience }
BaselineOfMarsRoverGT class >> loadLepiter [
	LeDatabasesRegistry defaultLogicalDatabase
		addKnowledgebaseFromDirectory: (IceRepository repositoryNamed: 'Mars-Rover-GT') location / 'lepiter'
]

{ #category : #baseline }
BaselineOfMarsRoverGT >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'MarsRoverGT'
		]
]
