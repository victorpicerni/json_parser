

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);

%}

%token ABRECHAVE FECHACHAVE ABRECOLCHETE FECHACOLCHETE ASPASDUPLA ABREPAR FECHAPAR VIRGULA PONTO DIGITO MENOS SPACE LETRA DOISPONTOS 

%%
OBJECT:
	ABRECHAVE LETRA SPACE DOISPONTOS SPACE DIGITO FECHACHAVE {printf("VALIDO\n");return 0;}
	

;

ARRAY:
	WHITESPACE
	|

;
VALUE:

;
STRING:

;
NUMBER:
DIGITO
;
WHITESPACE:
SPACE 
;


%%

void yyerror(char *s) {
printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;

}
