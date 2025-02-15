; ************************************************************************************************
; ************************************************************************************************
;
;		Name:		00data.inc
;		Purpose:	Global Data Objects
;		Created:	25th November 2023
;		Reviewed:	No
;		Author:		Paul Robson (paul@robsons.org.uk)
;
; ************************************************************************************************
; ************************************************************************************************

ControlCommand_Check = ControlPort+0 

ControlFunction = ControlPort+1
ControlError = ControlPort+2
ControlStatus = ControlPort+3
ControlParameters = ControlPort+4

VariableA = Program+2
VariableO = Program+9
VariableP = Program+16
VariableX = Program+23
VariableY = Program+30

; ************************************************************************************************
;	
;											Stack
;
; ************************************************************************************************

StackSize = 8

XS_TYPEMASK = $C0
XS_TYPEBIT = $80
XS_ISSTRING = $80
XS_ISVARIABLE = $20
XS_ISARRAY = $10
XS_ISPROC = $C0

		.section zeropage
XSStack:
		
XSControl:	
		.fill 	StackSize		
XSNumber0:
		.fill 	StackSize
XSNumber1:
		.fill 	StackSize
XSNumber2:
		.fill 	StackSize
XSNumber3:
		.fill 	StackSize

	
		.send zeropage

; ************************************************************************************************
;	
;											Zero Page
;
; ************************************************************************************************

		.section zeropage

CodePtr: 									; basic code
		.fill 	2 
basicStack: 								; basic stack
		.fill 	2		
zsTemp: 									; general string pointer
		.fill 	2
zTemp0:	
		.fill 	2
zTemp1:
		.fill 	2		
		
		.send zeropage

; ************************************************************************************************
;	
;										Normal Memory
;
; ************************************************************************************************

		.section storage

; ************************************************************************************************
;	
;										Main Interpreter
;
; ************************************************************************************************
		
freeMemory: 								; free memory address
		.fill 	2
ERRLine: 									; line number for errors.
		.fill 	2		
InputFlag: 									; Flag indicating input/print.
		.fill 	1
stringInitialised:							; temp string alloc set up
		.fill 	1		
stringMemory: 								; highest string memory concreted.
		.fill 	2		
stringTempPointer: 							; take temp string from here.
		.fill 	2	
basicStackEnd: 								; bottom limit of stack.
		.fill 	1
tempBuffer: 								; generic buffer.
		.fill 	32
dataPtr: 									; Data equivalent of CodePtr
		.fill 	2		
dataPos: 									; Data position of Y
		.fill 	1		
dataInStatement: 							; Non zero if currently in data statement
		.fill 	1		 					; (should be pointing at , : or EOL)
paramCount: 								; parameters in call.
		.fill 	1	
clIndent:	 								; current listing indent
		.fill 	1				
clFrom: 									; LIST range.
		.fill 	2		
clTo:
		.fill 	2		
highMemoryUpper: 							; High byte of high memory
		.fill 	1	

; ************************************************************************************************
;	
;										Tokenisation / Input
;
; ************************************************************************************************

inputPos: 									; tokenising position in input buffer
		.fill 	1
inputBuffer: 								; input buffer / token input buffer.
		.fill 	256

tokLineSize: 								; offset to end of line
		.fill 	1
tokLineNumber: 								; line number of current life
		.fill 	2		
tokBuffer: 									; tokenised line buffer
		.fill 	256 	
tokIsFirstElement: 							; first tokenised element flag.
		.fill 	1		
tokElement: 								; length prefixed string indicating an identifier or punctuation.
		.fill 	64
tokLengthPos: 								; position of length.
		.fill 	1	
tokDecCount: 								; decimal count.
		.fill 	1	
tokLastCharacter: 							; last character output.
		.fill 	1		
tokOffset: 									; position in line.
		.fill 	1		

; ************************************************************************************************
;	
;											Assembler
;
; ************************************************************************************************

modeMask: 									; modes available here.
		.fill 	1			
isGroup1: 									; assembler group 1 flag (LDA,STA etc.)
		.fill 	1		
baseOpcode: 								; current base opcode.
		.fill 	1		
paramStart: 								; 1/2 byte parameters for each assembler opcode.
		.fill 	1	

; ************************************************************************************************
;	
;											Graphics
;
; ************************************************************************************************

graphicsPosX: 								; current graphics position.
		.fill 	2			
graphicsPosY:
		.fill 	2			
graphicsCurrent: 							; current drawing mode (1 = move,2 = line,3 = rect,4 = ellipse)
		.fill 	1		
inkAndByte: 								; pixel drawing value
		.fill 	1		
inkXorByte:
		.fill 	1	
graphicsSolidMode: 							; graphics solid mode.
		.fill 	1		
graphicsSize: 								; graphics size.
		.fill 	1	
graphicsText: 								; size of string
		.fill 	2				
graphicsImageID: 							; ID of image
		.fill 	1
graphicsFlip:								; flip bits of image (0 = horiz,1 = vertical)
		.fill 	1

turtleInitialised:							; turtle initialised ?
		.fill 	1			
turtlePenDown: 								; true if pen down
		.fill 	1
turtlePenColour: 							; pen colour.
		.fill 	1		
turtleFast: 								; turtle full speed
		.fill 	1
				
; ************************************************************************************************
;	
;					Sprites. Order here must match the order in the firmware
;
; ************************************************************************************************

spriteID: 									; ID of sprite +0
		.fill 	1
spriteX: 									; sprite X position +1
		.fill 	2
spriteY: 									; sprite Y position +3
		.fill 	2
spriteImageSize: 							; image# (0..5) size (6) +5
		.fill 	1
spriteFlip: 								; x flip (0) y flip (1) +6
		.fill 	1
spriteAnchor: 								; anchor point +7
		.fill 	1		
		
spriteBlockSize = * - spriteID
		.send storage

; ************************************************************************************************
;
;									Changes and Updates
;
; ************************************************************************************************
;
;		Date			Notes
;		==== 			=====
;
; ************************************************************************************************

