/**********************************************
		10 print Classic v0.2
		josip.kalebic@gmail.com
		With changes from 8BST
***********************************************/
.var CHROUT = $ffd2
.var BASIC_RND = $e097

////10 print chr$(205.5+rnd(1));:goto 10

//This shuld be pretty safe memory location!
//sys49152
*=$C000

//Main program
mainProg: {		

loop:
		jsr BASIC_RND
		lda $00
		adc #$cd 
		jsr CHROUT
		bcc loop
}

//-----------------------------------------------------
