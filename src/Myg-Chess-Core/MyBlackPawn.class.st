Class {
	#name : 'MyBlackPawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyBlackPawn >> captureDirectionForPawn: aPawn [
    "Retourne les directions spécifiques aux pions noirs"
    ^ { aPawn square + (-1 @ -1). "Diagonale bas-gauche" .
        aPawn square + (1 @ -1). "Diagonale bas-droite" }


]

{ #category : 'accessing' }
MyBlackPawn >> firstForwardSquare [
    ^ self square down.
]

{ #category : 'accessing' }
MyBlackPawn >> nextForwardSquare: aSquare [
    ^ aSquare down.
]

{ #category : 'rendering' }
MyBlackPawn >> renderPieceOn: aSquare [

	^ aSquare renderBlackPawn
]
