
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
[(] {
	return ABREPAR
	;}
[)] {
	return FECHAPAR
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

[0-9]* {
	return DIGITO
	;}
[-]? {
	return MENOS
;}


. ;

\n ;



%%

int yywrap() {
  return 1;
}
