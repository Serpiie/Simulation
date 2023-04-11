MODULE ALL

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

CASE 7: holdItem()

CASE 8: moveToDone()

CASE 9: moveToBroken()

DEFAULT: moveToStart(); task := -1

ENDTEST

ENDPROC




! funkcijas un proceduras
FUNC num randomness ()
    VAR num x;    
    RETURN x;
ENDFUNC
    




ENDMODULE