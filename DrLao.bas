100 KEY OFF:COLOR 15,0,0:SCREEN 2,0,1
105 FOR I%=0 TO 3:READ V3%(I%):V4%(I%)=I%:NEXT I%:I%=3:J%=3
110 DATA &H8f,&Haf,&Hcf,&Hef
115 VDP(0)=VDP(0) OR 2
120 VDP(1)=VDP(1) AND &HE7
125 BLOAD "DRLAO",S
130 VDP(3)=V3%(I%):VDP(4)=V4%(J%)
135 K$=INKEY$:IF K$="" THEN 135
140 IF K$=CHR$(30) THEN J%=J%-1
145 IF K$=CHR$(31) THEN J%=J%+1
150 IF K$=CHR$(29) THEN I%=I%-1
155 IF K$=CHR$(28) THEN I%=I%+1
160 IF K$=CHR$(27) THEN 175
165 J%=J% AND 3:I%=I% AND 3
170 GOTO 130
175 SCREEN 0:PRINT"VDP(3)=&H";HEX$(V3%(I%)),"VDP(4)=&H";HEX$(V4%(J%)):END
