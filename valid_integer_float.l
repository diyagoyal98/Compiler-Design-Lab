%{
#include<stdio.h>
%}

%%
[0-9]*"."[0-9]* {
			printf("%s ",yytext);
			printf("%s","Valid Float\n");
		    }
[0-9]* {
		printf("%s ",yytext);
		printf("%s\n","Valid Integer\n");
	}

.+ {
	printf("%s\n",yytext);
	printf("%s\n","Not a valid Integer and Float\n");
  }	
%%

int main()
{
printf("Enter the input  ");
yylex();
return 0;
}

int yywrap()
{
return 1;
}