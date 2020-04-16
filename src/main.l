
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%

[{] {
	return ABRECHAVE
	}

[}] {
	return FECHACHAVE
	}
[ ] {
	return SPACE
	}
[A-Za-z]+ {
	return LETRA
	}
[0-9]+ {
	return INT
	}
([0-9]+[\.][0-9]+) {
	return FLOAT
	}
[{][ ]?([a-Z0-9]+[ ][;][0-9])*[}] {
	return OBJECT
	} 
[\"]; 
[ ];

.;

/n;




%%

int yywrap() {
  return 1;
}
