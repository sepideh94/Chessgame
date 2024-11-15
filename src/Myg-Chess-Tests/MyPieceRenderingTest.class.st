Class {
	#name : 'MyPieceRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyBishopRendering [

	| whiteBishop blackBishop blackSquare whiteSquare |
    
    "Create the pieces and squares"
     whiteBishop := MyBishop new.
     whiteBishop color: Color white. "White bishop"
     blackBishop := MyBishop new.
     blackBishop color: Color black. "Black bishop"
        
     whiteSquare := MyChessSquare new. "White square"
     whiteSquare color: Color white.
     blackSquare := MyChessSquare new. "Black square"
     blackSquare color: Color black .

     self assert: (whiteSquare renderBishop: whiteBishop) equals: 'B'.
     self assert: (whiteSquare renderBishop: blackBishop) equals: 'V'.
     self assert: (blackSquare renderBishop: whiteBishop) equals: 'b'.
     self assert: (blackSquare renderBishop: blackBishop) equals: 'v'.
	 


    
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyBishopRenderingnew [

	| whiteBishop blackBishop blackSquare whiteSquare |
    
    "Create the pieces and squares"
     whiteBishop := MyWhiteBishop new.
     blackBishop := MyBlackBishop new.
     whiteSquare := MyWhiteChessSquare new. "White square"
     blackSquare := MyBlackChessSquare new. "Black square"
   	  
     self assert: (whiteBishop renderPieceOn: whiteSquare) equals: 'B'.
     self assert: (blackBishop renderPieceOn: whiteSquare) equals: 'V'.
     self assert: (whiteBishop renderPieceOn: blackSquare) equals: 'b'.
     self assert: (blackBishop renderPieceOn: blackSquare) equals: 'v'.
	 


    
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyKingRendering [

	| whiteKing blackKing blackSquare whiteSquare |
    
   
     whiteKing := MyKing new.
     whiteKing color: Color white. 
     blackKing := MyKing new.
     blackKing color: Color black. 
        
     whiteSquare := MyChessSquare new. 
     whiteSquare color: Color white.
     blackSquare := MyChessSquare new. 
     blackSquare color: Color black .

     self assert: (whiteSquare renderKing: whiteKing) equals: 'K'.
     self assert: (whiteSquare renderKing: blackKing) equals: 'L'.
     self assert: (blackSquare renderKing: whiteKing) equals: 'k'.
     self assert: (blackSquare renderKing: blackKing) equals: 'l'.
	 


    
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyKingRenderingnew [

	| whiteKing blackKing blackSquare whiteSquare |
	whiteKing := MyWhiteKing new.
	blackKing := MyBlackKing new.

	whiteSquare := MyWhiteChessSquare new.
	blackSquare := MyBlackChessSquare new.

	self assert: (whiteKing renderPieceOn: whiteSquare) equals: 'K'.
	self assert: (blackKing renderPieceOn: whiteSquare) equals: 'L'.
	self assert: (whiteKing renderPieceOn: blackSquare) equals: 'k'.
	self assert: (blackKing renderPieceOn: blackSquare) equals: 'l'
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyKnightRendering [

	| whiteKnight blackKnight blackSquare whiteSquare |
    
   
     whiteKnight := MyKnight new.
     whiteKnight color: Color white. 
     blackKnight := MyKnight new.
     blackKnight color: Color black. 
        
     whiteSquare := MyChessSquare new. 
     whiteSquare color: Color white.
     blackSquare := MyChessSquare new. 
     blackSquare color: Color black .

     self assert: (whiteSquare renderKnight: whiteKnight) equals: 'N'.
     self assert: (whiteSquare renderKnight: blackKnight) equals: 'M'.
     self assert: (blackSquare renderKnight: whiteKnight) equals: 'n'.
     self assert: (blackSquare renderKnight: blackKnight) equals: 'm'.
	 


    
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyKnightRenderingnew [

	| whiteKnight blackKnight blackSquare whiteSquare |
	
	whiteKnight := MyWhiteKnight new.
	blackKnight := MyBlackKnight new.
	whiteSquare := MyWhiteChessSquare new.
	blackSquare := MyBlackChessSquare new.


	self assert: (whiteKnight renderPieceOn: whiteSquare) equals: 'N'.
	self assert: (blackKnight renderPieceOn: whiteSquare) equals: 'M'.
	self assert: (whiteKnight renderPieceOn: blackSquare) equals: 'n'.
	self assert: (blackKnight renderPieceOn: blackSquare) equals: 'm'
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyPawnRendering [

	| whitePawn blackPawn blackSquare whiteSquare |
    
   
     whitePawn := MyPawn new.
     whitePawn color: Color white. 
     blackPawn := MyPawn new.
     blackPawn color: Color black. 
        
     whiteSquare := MyChessSquare new. 
     whiteSquare color: Color white.
     blackSquare := MyChessSquare new. 
     blackSquare color: Color black .

     self assert: (whiteSquare renderPawn: whitePawn) equals: 'P'.
     self assert: (whiteSquare renderPawn: blackPawn) equals: 'O'.
     self assert: (blackSquare renderPawn: whitePawn) equals: 'p'.
     self assert: (blackSquare renderPawn: blackPawn) equals: 'o'.
	 


    
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyPawnRenderingnew [

	| whitePawn blackPawn blackSquare whiteSquare |
	whitePawn := MyWhitePawn new.
	blackPawn := MyBlackPawn new.

	whiteSquare := MyWhiteChessSquare new.
	blackSquare := MyBlackChessSquare new.

	self assert: (whitePawn renderPieceOn: whiteSquare) equals: 'P'.
	self assert: (blackPawn renderPieceOn: whiteSquare) equals: 'O'.
	self assert: (whitePawn renderPieceOn: blackSquare) equals: 'p'.
	self assert: (blackPawn renderPieceOn: blackSquare) equals: 'o'
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyQeenRendering [

	| whiteQeen blackQeen blackSquare whiteSquare |
    
   
     whiteQeen := MyQueen new.
     whiteQeen color: Color white. 
     blackQeen := MyQueen new.
     blackQeen color: Color black. 
        
     whiteSquare := MyChessSquare new. 
     whiteSquare color: Color white.
     blackSquare := MyChessSquare new. 
     blackSquare color: Color black .

     self assert: (whiteSquare renderQueen: whiteQeen) equals: 'Q'.
     self assert: (whiteSquare renderQueen: blackQeen) equals: 'W'.
     self assert: (blackSquare renderQueen: whiteQeen) equals: 'q'.
     self assert: (blackSquare renderQueen: blackQeen) equals: 'w'.
	 


    
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyQeenRenderingnew [

	| whiteQeen blackQeen blackSquare whiteSquare |
	whiteQeen := MyWhiteQueen new.
	blackQeen := MyBlackQueen new.

	whiteSquare := MyWhiteChessSquare new.
	blackSquare := MyBlackChessSquare new.

	self assert: (whiteQeen renderPieceOn: whiteSquare) equals: 'Q'.
	self assert: (blackQeen renderPieceOn: whiteSquare) equals: 'W'.
	self assert: (whiteQeen renderPieceOn: blackSquare) equals: 'q'.
	self assert: (blackQeen renderPieceOn: blackSquare) equals: 'w'
]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyRookRendering [

	| whiteRook blackRook blackSquare whiteSquare|
	
	  whiteRook:= MyRook new.
	  whiteRook color: Color white.
	  blackRook:= MyRook new.
     blackRook color: Color black.
	
	  whiteSquare := MyChessSquare new. 
     whiteSquare color: Color white.
     blackSquare := MyChessSquare new. 
     blackSquare color: Color black .
	
	self assert: ( whiteSquare renderRook: whiteRook ) equals: 'R'.
	self assert: ( whiteSquare renderRook: blackRook ) equals: 'T'.
	self assert: ( blackSquare renderRook: whiteRook ) equals: 'r'.
	self assert: ( blackSquare renderRook: blackRook ) equals: 't'.

]

{ #category : 'as yet unclassified' }
MyPieceRenderingTest >> testMyRookRenderingnew [

	| whiteRook blackRook blackSquare whiteSquare |
	whiteRook := MyWhiteRook new.
	blackRook := MyBlackRook new.

	whiteSquare := MyWhiteChessSquare new.
	blackSquare := MyBlackChessSquare new.

	self assert: (whiteRook renderPieceOn: whiteSquare) equals: 'R'.
	self assert: (blackRook renderPieceOn: whiteSquare) equals: 'T'.
	self assert: (whiteRook renderPieceOn: blackSquare) equals: 'r'.
	self assert: (blackRook renderPieceOn: blackSquare) equals: 't'
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderBishopWithNilColor [

	| myPiece |
	myPiece := MyBishop new.
	myPiece color: Color white . 
	
	"Set the color to nil to simulate an invalid state"
	myPiece color: nil.

	"Ensure that the renderPawn method handles this gracefully"
	self should: [ self renderBishop: myPiece ] raise: Error.

]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderBishopWithNilPiece [

	"Test what happens if the piece is nil"
	self should: [ self renderBishop: nil ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderBishopWithUnValidDataTypes [

	"Test passing unexpected data types as aPiece"
	self should: [ self renderBishop: 1234 ] raise: Error.
	self should: [ self renderBishop: true ] raise: Error.
	self should: [ self renderBishop: #(1 2 3) ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderKingWithNilColor [

	| myPiece |
	myPiece := MyKing new.
	myPiece color: Color white . 
	
	"Set the color to nil to simulate an invalid state"
	myPiece color: nil.

	"Ensure that the renderPawn method handles this gracefully"
	self should: [ self renderKing: myPiece ] raise: Error.

]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderKingWithNilPiece [

	"Test what happens if the piece is nil"
	self should: [ self renderKing: nil ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderKingWithUnValidDataTypes [

	"Test passing unexpected data types as aPiece"
	self should: [ self renderKing: 1234 ] raise: Error.
	self should: [ self renderKing: true ] raise: Error.
	self should: [ self renderKing: #(1 2 3) ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderKnightWithNilColor [

	| myPiece |
	myPiece := MyKnight new.
	myPiece color: Color white . 
	
	"Set the color to nil to simulate an invalid state"
	myPiece color: nil.

	"Ensure that the renderPawn method handles this gracefully"
	self should: [ self renderKnight: myPiece ] raise: Error.

]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderKnightWithNilPiece [

	"Test what happens if the piece is nil"
	self should: [ self renderKnight: nil ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderKnightWithUnValidDataTypes [

	"Test passing unexpected data types as aPiece"
	self should: [ self renderKnight: 1234 ] raise: Error.
	self should: [ self renderKnight: true ] raise: Error.
	self should: [ self renderKnight: #(1 2 3) ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderPawnWithNilColor [

	| myPiece |
	myPiece := MyPawn new.
	myPiece color: Color white . 
	
	"Set the color to nil to simulate an invalid state"
	myPiece color: nil.

	"Ensure that the renderPawn method handles this gracefully"
	self should: [ self renderPawn: myPiece ] raise: Error.

]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderPawnWithNilPiece [

	"Test what happens if the piece is nil"
	self should: [ self renderPawn: nil ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderPawnWithUnValidDataTypes [

	"Test passing unexpected data types as aPiece"
	self should: [ self renderPawn: 1234 ] raise: Error.
	self should: [ self renderPawn: true ] raise: Error.
	self should: [ self renderPawn: #(1 2 3) ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderQeentWithNilColor [

	| myPiece |
	myPiece := MyQueen new.
	myPiece color: Color white . 
	
	"Set the color to nil to simulate an invalid state"
	myPiece color: nil.

	"Ensure that the renderPawn method handles this gracefully"
	self should: [ self renderQueen: myPiece ] raise: Error.

]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderQueenWithNilPiece [

	"Test what happens if the piece is nil"
	self should: [ self renderQueen: nil ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderQueenWithUnValidDataTypes [

	"Test passing unexpected data types as aPiece"
	self should: [ self renderQueen: 1234 ] raise: Error.
	self should: [ self renderQueen: true ] raise: Error.
	self should: [ self renderQueen: #(1 2 3) ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderRookWithNilPiece [

	"Test what happens if the piece is nil"
	self should: [ self renderRook: nil ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderRookWithUnValidDataTypes [

	"Test passing unexpected data types as aPiece"
	self should: [ self renderRook: 1234 ] raise: Error.
	self should: [ self renderRook: true ] raise: Error.
	self should: [ self renderRook: #(1 2 3) ] raise: Error.
]

{ #category : 'tests' }
MyPieceRenderingTest >> testRenderRooktWithNilColor [

	| myPiece |
	myPiece := MyRook new.
	myPiece color: Color white . 
	
	"Set the color to nil to simulate an invalid state"
	myPiece color: nil.

	"Ensure that the renderPawn method handles this gracefully"
	self should: [ self renderRook: myPiece ] raise: Error.

]
