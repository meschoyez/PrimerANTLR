grammar ExpReg;

fragment DIGITO : [0-9] ; // 0 | 1 | 2 | 3 |...| 9

fragment LETRA : [a-zA-Z] ;

MAS : '+' ;

ENTERO : DIGITO+ ;

PALABRA : LETRA+ ;

WS : [ \n\t\r] -> skip;

// RAILROAD 

s : ENTERO { System.out.println( "Linea " + $ENTERO.getLine() + ": (" +
                   $ENTERO.getStartIndex() + ") -> " + $ENTERO.getText() ); } s
  | PALABRA { System.out.println( $PALABRA ); } s
  | MAS { System.out.println("simbolo mas -> " + $MAS); } s
  | 
  ;