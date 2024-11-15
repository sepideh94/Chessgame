Class {
	#name : 'MyBlackChessSquare',
	#superclass : 'MyChessSquare',
	#classVars : [
		'MyOpenChessDownloadedFont'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyBlackChessSquare >> initialize [

	^ super initialize 
	color: Color black.
	
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackBishop [

	^ 'v'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackKing [

	^ 'l'
	
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackKning [

	^ 'm'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackPawn [

	^ 'o'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackQueen [

	^ 'w'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackRook [

	^ 't'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteBishop [

	^ 'b'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteKing [

	^ 'k'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteKning [

	^ 'n'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhitePawn [

	^ 'p'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteQueen [

	^ 'q'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteRook [

	^ 'r'
]
