MODULE ALL

PERS tooldata SuctionTool:=[TRUE,[[0,0,160],[1,0,0,0]],[1,[0,0,1],[1,0,0,0],0,0,0]];

VAR num DarbaLaiks:=0;
VAR intnum timeint;
PERS bool Start:=FALSE;
PERS string Status:="busy";
PERS num UzdevumaNumurs:=0;
PERS num CikluSkaits:=0;
PERS num DarbibuSkaits:=28;
PERS num UzdevumaLaiks:=0;    
CONST intnum Z_nobide_virs:= 150;
VAR intnum k_OK_skait:= 1;
VAR intnum k_NOK_skait:= 1;
PERS wobjdata Stends:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];



PROC main()

task := N

TEST task

CASE 0: moveToItems()

CASE 1: selectItem()

CASE 2: pickUpItem()

CASE 3: scanCode()

CASE 4: moveToWeights()

CASE 5: holdItem()

CASE 6: weightObject()

!CASE 7: holdItem()

CASE 8: moveToDone()

CASE 9: moveToBroken()

DEFAULT: moveToStart(); task := -1

ENDTEST

ENDPROC

PROC moveToItems()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    
    !wait for next task
ENDPROC

PROC selectItem()

    !select coordinates of object
    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;

    !wait for next task

ENDPROC

PROC pickUpItem()

    enableSuctioncup()

    !lift Item
    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;

    

ENDPROC

PROC scanCode()

!move and orient to the camera and wait for the next task

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;

    


ENDPROC

PROC moveToWeights()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;

    
ENDPROC
 


PROC weightObject()

    disableSuctioncup()
    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    
    
ENDPROC

PROC holdItem()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    enableSuctioncup()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    

ENDPROC


PROC moveToDone()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    disableSuctioncup()


ENDPROC

PROC moveToBroken()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    disableSuctioncup()

ENDPROC

PROC moveToStart()
    
    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
   

ENDPROC


! funkcijas un proceduras
FUNC num randomness ()
    VAR num x;    
    RETURN x;
ENDFUNC
    

ENDMODULE