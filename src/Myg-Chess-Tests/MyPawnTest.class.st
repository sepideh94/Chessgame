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
MyPawnTest >> testLengthOneFirstMovesIsPossible [

	| pawn board squares |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e3'))
]

{ #category : 'tests' }
MyPawnTest >> testLengthTwoFirstMovesIsPossible [

	| pawn board squares |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e4'))
]
