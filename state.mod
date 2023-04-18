MODULE state

PERS bool inSimulation = TRUE

PERS num UzdevumaNumurs:=0;

CONST intnum Z_nobide_virs:= 150;



FUNC num taskNumber()
IF inSimulation THEN
    UzdevumaNumurs:=  (UzdevumaNumurs+1)%8
    RETURN UzdevumaNumurs
ENDIF

ENDFUNC



FUNC bool getQRstate()
IF inSimulation THEN
    VAR bool N;
    RETURN N
ENDIF

ENDFUNC

FUNC enableSuctioncup()

ENDFUNC

FUNC disableSuctioncup()

ENDFUNC


ENDMODULE