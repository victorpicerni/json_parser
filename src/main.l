
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
[,] {
	return VIRGULA
	;}
[\[] {
	return ABRECOLCHETE
	;}

[\]] {
	return FECHACOLCHETE
	;}

[:] {
	return DOISPONTOS
	;}

[a-zA-Z]+[0-9]*([ ]*[a-zA-Z]*[0-9]*)*(\n)* {
	return LETRA
	;}

[0-9]+([.]?[0-9]+)? {
	return DIGITO
	;}

[\"] {
	return ASPASDUPLA
	;}


. ;
[\n] ;




%%

int yywrap() {
  return 1;
}
