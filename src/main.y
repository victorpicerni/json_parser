

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);

%}

%token ABRECHAVE FECHACHAVE ABRECOLCHETE FECHACOLCHETE ASPASDUPLA ABREPAR FECHAPAR VIRGULA PONTO DIGITO MENOS SPACE LETRA

%%
OBJECT:
ABRECHAVE FECHACHAVE

;
ARRAY:
ABRECOLCHETE FECHACOLCHETE
;
VALUE:

;
STRING:

;
NUMBER:
NUMERO
;
WHITSPACE:
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
