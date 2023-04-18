MODULE state
MODULE ALL

PERS tooldata SuctionTool:=[TRUE,[[0,0,160],[1,0,0,0]],[1,[0,0,1],[1,0,0,0],0,0,0]];
PERS wobjdata Stends:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];

PROC main()

task := state.taskNumber()

TEST task

CASE 0: moveToItems()

CASE 1: selectItem()

CASE 2: pickUpItem()

CASE 3: scanCode()

CASE 4: moveToWeights()

CASE 5: weightObject()

CASE 6: holdItem()

CASE 7: moveToDone()

CASE 8: moveToBroken()

DEFAULT: moveToStart(); task := -1

ENDTEST

ENDPROC

PROC moveToItems()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    
    
ENDPROC

PROC selectItem()

    !select coordinates of object
    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;

   

ENDPROC

PROC pickUpItem()

    state.enableSuctioncup()

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

    state.disableSuctioncup()
    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    
    
ENDPROC

PROC holdItem()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    state.enableSuctioncup()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    

ENDPROC


PROC moveToDone()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    state.disableSuctioncup()


ENDPROC

PROC moveToBroken()

    !MoveL Offs(t,0,0,Z_nobide_virs),v100,z0,SuctionTool\WObj:=wobj0;
    state.disableSuctioncup()

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