/**********************************************
		10 print Orto v0.1
		josip.kalebic@gmail.com
***********************************************/
//https://www.pagetable.com/c64ref/c64disasm/#E097

.var CHROUT = $ffd2
.var BASIC_RND = $e097
//This shuld be pretty safe memory location!
//sys49152
*=$C000

//Main program
mainProg: {		

loop:
		//jsr $e092
		jsr BASIC_RND
		lda $8f          //$8b - $8f
		and #%00000111
		cmp #6
		bcs loop

		tax
		lda chars,x
		jsr CHROUT
		jmp loop
}

//-----------------------------------------------------
chars: .byte $ab,$b3,$b1,$b2,$c0,$7d