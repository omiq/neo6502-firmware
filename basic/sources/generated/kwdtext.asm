;
;	This file is automatically generated.
;
	.section code
BinaryTokenText:
	.byte	$01,$ab                       	; $ 20 +
	.byte	$01,$ad                       	; $ 21 -
	.byte	$01,$aa                       	; $ 22 *
	.byte	$01,$af                       	; $ 23 /
	.byte	$02,$3e,$be                   	; $ 24 >>
	.byte	$02,$3c,$bc                   	; $ 25 <<
	.byte	$01,$a5                       	; $ 26 %
	.byte	$01,$dc                       	; $ 27 \
	.byte	$01,$a6                       	; $ 28 &
	.byte	$01,$fc                       	; $ 29 |
	.byte	$01,$de                       	; $ 2a ^
	.byte	$01,$be                       	; $ 2b >
	.byte	$02,$3e,$bd                   	; $ 2c >=
	.byte	$01,$bc                       	; $ 2d <
	.byte	$02,$3c,$bd                   	; $ 2e <=
	.byte	$02,$3c,$be                   	; $ 2f <>
	.byte	$01,$bd                       	; $ 30 =
	.byte	$FF

BaseTokenText:
	.byte	$00                           	; $ 80 
	.byte	$01,$a4                       	; $ 81 $
	.byte	$01,$a8                       	; $ 82 (
	.byte	$05,$52,$41,$4e,$44,$a8       	; $ 83 RAND(
	.byte	$04,$52,$4e,$44,$a8           	; $ 84 RND(
	.byte	$06,$49,$53,$56,$41,$4c,$a8   	; $ 85 ISVAL(
	.byte	$04,$49,$4e,$54,$a8           	; $ 86 INT(
	.byte	$04,$54,$49,$4d,$c5           	; $ 87 TIME
	.byte	$06,$45,$56,$45,$4e,$54,$a8   	; $ 88 EVENT(
	.byte	$07,$49,$4e,$4b,$45,$59,$24,$a8	; $ 89 INKEY$(
	.byte	$04,$41,$53,$43,$a8           	; $ 8a ASC(
	.byte	$05,$43,$48,$52,$24,$a8       	; $ 8b CHR$(
	.byte	$04,$53,$51,$52,$a8           	; $ 8c SQR(
	.byte	$04,$4c,$45,$4e,$a8           	; $ 8d LEN(
	.byte	$04,$41,$42,$53,$a8           	; $ 8e ABS(
	.byte	$04,$53,$47,$4e,$a8           	; $ 8f SGN(
	.byte	$04,$56,$41,$4c,$a8           	; $ 90 VAL(
	.byte	$05,$53,$54,$52,$24,$a8       	; $ 91 STR$(
	.byte	$05,$4d,$49,$44,$24,$a8       	; $ 92 MID$(
	.byte	$06,$4c,$45,$46,$54,$24,$a8   	; $ 93 LEFT$(
	.byte	$07,$52,$49,$47,$48,$54,$24,$a8	; $ 94 RIGHT$(
	.byte	$04,$53,$49,$4e,$a8           	; $ 95 SIN(
	.byte	$04,$43,$4f,$53,$a8           	; $ 96 COS(
	.byte	$04,$54,$41,$4e,$a8           	; $ 97 TAN(
	.byte	$05,$41,$54,$41,$4e,$a8       	; $ 98 ATAN(
	.byte	$04,$4c,$4f,$47,$a8           	; $ 99 LOG(
	.byte	$04,$45,$58,$50,$a8           	; $ 9a EXP(
	.byte	$04,$4b,$45,$59,$a8           	; $ 9b KEY(
	.byte	$05,$50,$45,$45,$4b,$a8       	; $ 9c PEEK(
	.byte	$05,$44,$45,$45,$4b,$a8       	; $ 9d DEEK(
	.byte	$00                           	; $ 9e 
	.byte	$00                           	; $ 9f 
	.byte	$00                           	; $ a0 
	.byte	$00                           	; $ a1 
	.byte	$00                           	; $ a2 
	.byte	$00                           	; $ a3 
	.byte	$00                           	; $ a4 
	.byte	$00                           	; $ a5 
	.byte	$00                           	; $ a6 
	.byte	$00                           	; $ a7 
	.byte	$00                           	; $ a8 
	.byte	$00                           	; $ a9 
	.byte	$00                           	; $ aa 
	.byte	$00                           	; $ ab 
	.byte	$00                           	; $ ac 
	.byte	$00                           	; $ ad 
	.byte	$00                           	; $ ae 
	.byte	$00                           	; $ af 
	.byte	$05,$57,$48,$49,$4c,$c5       	; $ b0 WHILE
	.byte	$04,$57,$45,$4e,$c4           	; $ b1 WEND
	.byte	$02,$49,$c6                   	; $ b2 IF
	.byte	$05,$45,$4e,$44,$49,$c6       	; $ b3 ENDIF
	.byte	$02,$44,$cf                   	; $ b4 DO
	.byte	$04,$4c,$4f,$4f,$d0           	; $ b5 LOOP
	.byte	$06,$52,$45,$50,$45,$41,$d4   	; $ b6 REPEAT
	.byte	$05,$55,$4e,$54,$49,$cc       	; $ b7 UNTIL
	.byte	$04,$50,$52,$4f,$c3           	; $ b8 PROC
	.byte	$07,$45,$4e,$44,$50,$52,$4f,$c3	; $ b9 ENDPROC
	.byte	$03,$46,$4f,$d2               	; $ ba FOR
	.byte	$04,$4e,$45,$58,$d4           	; $ bb NEXT
	.byte	$04,$43,$41,$53,$c5           	; $ bc CASE
	.byte	$07,$45,$4e,$44,$43,$41,$53,$c5	; $ bd ENDCASE
	.byte	$00                           	; $ be 
	.byte	$04,$54,$48,$45,$ce           	; $ bf THEN
	.byte	$00                           	; $ c0 
	.byte	$00                           	; $ c1 
	.byte	$00                           	; $ c2 
	.byte	$00                           	; $ c3 
	.byte	$02,$54,$cf                   	; $ c4 TO
	.byte	$03,$4c,$45,$d4               	; $ c5 LET
	.byte	$05,$50,$52,$49,$4e,$d4       	; $ c6 PRINT
	.byte	$05,$49,$4e,$50,$55,$d4       	; $ c7 INPUT
	.byte	$04,$43,$41,$4c,$cc           	; $ c8 CALL
	.byte	$03,$53,$59,$d3               	; $ c9 SYS
	.byte	$04,$45,$58,$49,$d4           	; $ ca EXIT
	.byte	$01,$ac                       	; $ cb ,
	.byte	$01,$bb                       	; $ cc ;
	.byte	$01,$ba                       	; $ cd :
	.byte	$01,$a7                       	; $ ce '
	.byte	$01,$a9                       	; $ cf )
	.byte	$04,$52,$45,$41,$c4           	; $ d0 READ
	.byte	$04,$44,$41,$54,$c1           	; $ d1 DATA
	.byte	$01,$db                       	; $ d2 [
	.byte	$01,$dd                       	; $ d3 ]
	.byte	$01,$a3                       	; $ d4 #
	.byte	$01,$ae                       	; $ d5 .
	.byte	$04,$45,$4c,$53,$c5           	; $ d6 ELSE
	.byte	$04,$57,$48,$45,$ce           	; $ d7 WHEN
	.byte	$06,$44,$4f,$57,$4e,$54,$cf   	; $ d8 DOWNTO
	.byte	$04,$50,$4f,$4b,$c5           	; $ d9 POKE
	.byte	$04,$44,$4f,$4b,$c5           	; $ da DOKE
	.byte	$FF

Shift1TokenText:
	.byte	$05,$43,$4c,$45,$41,$d2       	; $180 CLEAR
	.byte	$03,$4e,$45,$d7               	; $181 NEW
	.byte	$03,$52,$55,$ce               	; $182 RUN
	.byte	$04,$53,$54,$4f,$d0           	; $183 STOP
	.byte	$03,$45,$4e,$c4               	; $184 END
	.byte	$06,$41,$53,$53,$45,$52,$d4   	; $185 ASSERT
	.byte	$04,$4c,$49,$53,$d4           	; $186 LIST
	.byte	$04,$53,$41,$56,$c5           	; $187 SAVE
	.byte	$04,$4c,$4f,$41,$c4           	; $188 LOAD
	.byte	$05,$47,$4f,$53,$55,$c2       	; $189 GOSUB
	.byte	$04,$47,$4f,$54,$cf           	; $18a GOTO
	.byte	$06,$52,$45,$54,$55,$52,$ce   	; $18b RETURN
	.byte	$07,$52,$45,$53,$54,$4f,$52,$c5	; $18c RESTORE
	.byte	$03,$44,$49,$cd               	; $18d DIM
	.byte	$FF

BinaryPrecedence:
	.byte	3		; +
	.byte	3		; -
	.byte	4		; *
	.byte	4		; /
	.byte	4		; >>
	.byte	4		; <<
	.byte	4		; %
	.byte	4		; \
	.byte	1		; &
	.byte	1		; |
	.byte	1		; ^
	.byte	2		; >
	.byte	2		; >=
	.byte	2		; <
	.byte	2		; <=
	.byte	2		; <>
	.byte	2		; =
	.send code
