
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

[[] {
	return ABRECOLCHETE
	;}

[]] {
	return FECHACOLCHETE
	;}

[:] {
	return DOISPONTOS
	;}
[,] {
	return VIRGULA
	;}


[A-z]+[0-9]*([ ][A-z0-9]+[0-9]*)* {
	return LETRA
	;}

[0-9]+([.]?[0-9]+)? {
	return DIGITO
	;}

[\"] {
	return ASPASDUPLA
	;}

[{]([\"][A-z]+[\"][ ][:][ ][[][0-9]+[,][ ][[][0-9]+[,][ ][0-9]+[,][ ][\[][\]][ ][\]][ ][\]][ ][}]) {
	return NULO
		;}

. ;
[\n] ;




%%

int yywrap() {
  return 1;
}
