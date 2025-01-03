Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyWhitePawn >> captureDirectionForPawn: aPawn [
    "Retourne les directions spécifiques aux pions blancs"
    ^ { aPawn square + (-1 @ 1). "Diagonale haut-gauche" .
        aPawn square + (1 @ 1). "Diagonale haut-droite" }

]

{ #category : 'accessing' }
MyWhitePawn >> firstForwardSquare [
    ^ self square up.
]

{ #category : 'accessing' }
MyWhitePawn >> nextForwardSquare: aSquare [
    ^ aSquare up.
]

{ #category : 'rendering' }
MyWhitePawn >> renderPieceOn: aSquare [

	^ aSquare renderWhitePawn
]
