grammar ExpReg;

fragment DIGITO : [0-9] ; // 0 | 1 | 2 | 3 |...| 9

fragment LETRA : [a-zA-Z] ;

PA : '(' ;
PC : ')' ;

MAS : '+' ;

BARRA : '/' ;
DOSPUNTOS : ':' ;

YEAR : ('199'[89])|('200'[0-8]) ;
HORA : ( '11' DOSPUNTOS [3-5][0-9]
     | '1'[2-9] DOSPUNTOS [0-5][0-9]
     | '20' DOSPUNTOS ([0-3][0-9] | '4'[0-5] ) )
             DOSPUNTOS [0-5][0-9] ;

HORADESCARTE : ([01][0-9]|'2'[0-3]) DOSPUNTOS [0-5][0-9] DOSPUNTOS [0-5][0-9] -> skip ;

ENTERO : [-+]? DIGITO+ ;

PALABRA : LETRA+ ;

ID : (LETRA | DIGITO) + ;

WS : [ \n\t\r] -> skip;

// RAILROAD 

// s : ENTERO { System.out.println( "Linea (ENTERO)" + $ENTERO.getLine() + ": (" +
//                    $ENTERO.getStartIndex() + ") -> " + $ENTERO.getText() ); } s
//   | PALABRA { System.out.println( $PALABRA ); } s
//   | MAS { System.out.println("simbolo mas -> " + $MAS); } s
//   |
//   ;

// s : HORA { System.out.println("Encontre hora -> " + $HORA.getLine() + " -> " + $HORA.getText()); } s
//   | ENTERO BARRA ENTERO BARRA YEAR { System.out.println("Encontre anho -> " + $YEAR.getLine() + " -> " + $YEAR.getText()); } s
//   | ENTERO BARRA ENTERO BARRA ENTERO s
//   | ID s
//   | 
//   ;

si : s ;

// Agregar balance llaves y corchetes
s : PA s PC s
  |
  ;
  