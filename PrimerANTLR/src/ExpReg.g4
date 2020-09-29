grammar ExpReg;

fragment DIGITO : [0-9] ; // 0 | 1 | 2 | 3 |...| 9

fragment LETRA : [a-zA-Z] ;

PA : '(' ;
PC : ')' ;
LA : '{' ;
LC : '}' ;
MAS : '+' ;
MENOS : '-' ;
MULT : '*' ;
DIV : '/' ;
MOD : '%' ;
DOSPUNTOS : ':' ;
PYC : ';' ;
COMA : ',' ;
IGUAL : '=' ;
COMP : '<' | '>';
INT : 'int' ;
DOUBLE : 'double' ;
CHAR : 'char' ;
WHILE : 'while' ;

ENTERO : [-+]? DIGITO+ ;

ID : (LETRA | '_') (LETRA | DIGITO | '_')* ;

WS : [ \n\t\r] -> skip;


prog : instrucciones ;

instrucciones : inst instrucciones
              |
              ;

inst : LA instrucciones LC
     | declaracion_var
     | iwhile
     | asignacion
     ;

iwhile : WHILE PA opal PC ;

declaracion_var : tipodato ID la PYC ;

tipodato : INT
         | DOUBLE
         | CHAR
         ;

asignacion : ID IGUAL expresion PYC ;

// Agregar reglas de operaciones logicas y comparacion
//   --> unirlas con "expresion"

expresion : expresion MAS termino
          | expresion MENOS termino
          | termino
          ;

termino : termino MULT factor
        | termino DIV factor
        | termino MOD factor
        | factor
        ;

factor : PA expresion PC
       | ID
       | ENTERO
       ;

comparacion : ID COMP ID
            | ID COMP ENTERO
            ;

la : IGUAL expresion la
   | COMA ID la
   |
   ;

// Agregar balance llaves y corchetes
s : PA s PC s
  |
  ;
  