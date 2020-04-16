

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);

%}

%token ABRECHAVE FECHACHAVE

%%
OBJECT:


;
ARRAY:

;
VALUE:

;
STRING:

;
NUMBER:

;
WHITSPACE:

;


%%

void yyerror(char *s) {
}

int main() {
  yyparse();
    return 0;

}
