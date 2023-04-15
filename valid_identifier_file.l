%{
#include<stdio.h>
%}

%%
[_|a-z|A-Z]+[_|a-z|A-Z|0-9]* {
					 printf("%s ",yytext);
					 printf("%s","is valid identifier\n");
				     }
[0-9]+[_a-z|A-Z|0-9|_]* {
	printf("%s ",yytext);
	printf("%s","is not a valid identifier\n");
  }
. {}
%%

int main()
{
extern FILE *yyin;
yyin=fopen("valid_identifier_input.txt","r");
printf("Input is being inputed from the file\n");
yylex();
return 0;
}

int yywrap()
{
return 1;
}
