%{
#include<stdio.h>
%}

%%
[0-9]*"."[0-9]* {
			printf("%s ",yytext);
			printf("%s\n","Valid Float");
		    }
[0-9]* {
		printf("%s ",yytext);
		printf("%s\n","Valid Integer");
	}
. {}	
%%

int main()
{
extern FILE *yyin;
printf("Input is being reading from the file\n");
yyin=fopen("valid_integer_float_input.txt","r");
yylex();
return 0;
}

int yywrap()
{
return 1;
}
