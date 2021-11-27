/**********************************************
		10 print Classic v0.1
		josip.kalebic@gmail.com
***********************************************/
.var CHROUT = $ffd2
.var RASTER = $D012     // Raster counter

////10 print chr$(205.5+rnd(1));:goto 10

//This shuld be pretty safe memory location!
//sys49152
*=$C000

//Main program
mainProg: {		

loop:

		eor RASTER       // generate kinda random byte
		and #%00000001
		tax
		lda chars,x
		jsr CHROUT
		jmp loop
}

//-----------------------------------------------------
chars: .byte $cd,$ce
