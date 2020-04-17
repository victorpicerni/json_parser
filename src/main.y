

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);

%}

%token ABRECHAVE FECHACHAVE ABRECOLCHETE FECHACOLCHETE ASPASDUPLA VIRGULA PONTO DIGITO MENOS SPACE LETRA DOISPONTOS VAZIO BOOLEAN NULO

%%
OBJECT:
	ABRECHAVE OBJREC {printf("VALIDO\n");return 0;}
	|ABRECHAVE WHITESPACE FECHACHAVE {printf("VALIDO\n");return 0;}
;
OBJREC:
	WHITESPACE STRING WHITESPACE DOISPONTOS WHITESPACE VALUE FECHACHAVE
	|OBJREC 

;


ARRAY:
	ABRECOLCHETE WHITESPACE FECHACOLCHETE {printf("VALIDO\n");return 0;}
	|ABRECOLCHETE ARRAYREC FECHACOLCHETE {printf("VALIDO\n");return 0;}
;
ARRAYREC:
	ARRAYREC
	|VALUE VIRGULA
;


VALUE:
WHITESPACE STRING WHITESPACE
|WHITESPACE NUMBER WHITESPACE
|WHITESPACE OBJECT WHITESPACE
|WHITESPACE ARRAY WHITESPACE
|WHITESPACE BOOLEAN WHITESPACE
|WHITESPACE NULO WHITESPACE
;


STRING:
	ASPASDUPLA ASPASDUPLA
	|ASPASDUPLA LETRA ASPASDUPLA
	|
;
NUMBER:
DIGITO
|DIGITO PONTO DIGITO
|MENOS DIGITO PONTO DIGITO
;

WHITESPACE:
SPACE
|VAZIO
|WHITESPACE

;


%%

void yyerror(char *s) {
printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;

}
