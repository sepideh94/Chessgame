Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testCannotMoveOffBoard [
    | pawn board squares |
    board := MyChessBoard empty.
    board at: 'e1' put: (pawn := MyPawn white).  "Pawn is at the edge of the board"
    
    "Check that the pawn cannot move up beyond the board"
    squares := pawn targetSquaresLegal: true.
    self deny: (squares includes: (board at: 'e0')).  "Cannot move off the board"

]

{ #category : 'tests' }
MyPawnTest >> testCannotMoveOffBoardB [
    | pawn board squares |
    board := MyChessBoard empty.
    board at: 'e8' put: (pawn := MyPawn black).  "Pawn is at the edge of the board"
    
    "Check that the pawn cannot move up beyond the board"
    squares := pawn targetSquaresLegal: true.
    self deny: (squares includes: (board at: 'e9')).  "Cannot move off the board"

]

{ #category : 'tests' }
MyPawnTest >> testDiagonalMoves [

	| pawn board squares |
	self skip.
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer en diagonale pour capter les ennemies"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'f3'))
]

{ #category : 'tests' }
MyPawnTest >> testDiagonalMovesIsPossible [

	| pawn board squares |
	self skip.
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer en diagonale pour capter les ennemies"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'f3'))
]

{ #category : 'tests' }
MyPawnTest >> testDiagonalMovesIsPossibleB [

	| pawn board squares |
	self skip.
	board := MyChessBoard empty.
	board at: 'e7' put: (pawn := MyPawn black).

	"Vérifier que le pion peut se déplacer en diagonale pour capter les ennemies"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'd6'))
]

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
MyPawnTest >> testLengthOneFirstMovesIsPossibleB [

	| pawn board squares |
	board := MyChessBoard empty.
	board at: 'e7' put: (pawn := MyPawn black).

	"Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e6'))
]

{ #category : 'tests' }
MyPawnTest >> testLengthOneNotFirstMovesIsPossible [

	"We should move a pawn of one
	then make sure that we can one
	
	then we should have another test
	that 
		move a pawn of one
		cannot move this pawn of two
	"
	| pawn board squares |
	self skip.
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

{ #category : 'tests' }
MyPawnTest >> testLengthTwoFirstMovesIsPossibleB [

	| pawn board squares |
	board := MyChessBoard empty.
	board at: 'e7' put: (pawn := MyPawn black).

	"Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e5'))
]

{ #category : 'tests' }
MyPawnTest >> testSubsequentMovesOneSquareOnly [
    | pawn board squares |
    board := MyChessBoard empty.
    board at: 'e3' put: (pawn := MyPawn white).
    pawn hasMoved: true.

    "Check that the pawn can move only one square after its first move"
    squares := pawn targetSquaresLegal: true.
    self assert: (squares includes: (board at: 'e4')).
    self deny: (squares includes: (board at: 'e5')).  "Should not be able to move two squares anymore"

]

{ #category : 'tests' }
MyPawnTest >> testSubsequentMovesOneSquareOnlyB [

	| pawn board squares |
	board := MyChessBoard empty.
	board at: 'e5' put: (pawn := MyPawn black).
	pawn hasMoved: true.

	"Check that the pawn can move only one square after its first move"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e4')).
	self deny: (squares includes: (board at: 'e3')) "Should not be able to move two squares anymore"
]
