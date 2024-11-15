Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testId [

	self assert: MyPawn new id equals: 'P'
]

{ #category : 'tests' }
MyPawnTest >> testMovesForBlack [

	| pawn squares board |
	board := MyChessBoard empty.
	board at: 'e7' put: (pawn := MyPawn white ).

	squares := pawn targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e8 ) collect: [ :name |
				 board at: name ])
]
