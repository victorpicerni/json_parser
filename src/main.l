
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%

[{] {
	return ABRECHAVE
	;}

[}] {
	return FECHACHAVE
	;}
[:] {
	return DOISPONTOS
	;}
[\[] {
	return ABRECOLCHETE
	;}
[\]] {
	return FECHACOLCHETE
	;}
[\"] {
	return ASPASDUPLA
	;}
[,] {
	return VIRGULA
	;}
[\.] {
	return PONTO
	;}

[A-z]* {
	return LETRA
	;}

[\t\r\n\s ]* {
	return SPACE
	;}
[]* {
	return VAZIO
	;}
[0-9]* {
	return DIGITO
	;}
[-]? {
	return MENOS
;}
[(true)(false)] {
	return BOOLEAN
;}
[\0] {
		NULO
			}
}

. ;

\n ;



%%

int yywrap() {
  return 1;
}
