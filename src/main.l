
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
[ ] {
	return SPACE
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
[A-Za-z]+ {
	return LETRA
	;}

[\t\r\n\s)]* {
	return SPACE
	;}
[0-9] {
	return DIGITO
	;}
[-]? {
	return MENOS
;}


.;




%%

int yywrap() {
  return 1;
}
