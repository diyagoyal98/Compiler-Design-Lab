%{
#include<stdio.h>
%}

%%
[_|a-z|A-Z]+[_|a-z|A-Z|0-9]* {
					 fprintf(yyout,"%s ",yytext);
					 fprintf(yyout,"%s\n","is valid identifier");
					}
[0-9]+[_|a-z|A-Z|0-9]* {
				  fprintf(yyout,"%s",yytext);
				  fprintf(yyout,"%s\n","is not a valid identifier");
				}
. {}
%%


int main()
{
extern FILE *yyin,*yyout;
yyin=fopen("valid_identifier_input.txt","r");
yyout=fopen("valid_identifier_output.txt","w");
printf("Input is being reading from the file\n");
yylex();
return 0;
}

int yywrap()
{
return 1;
}

