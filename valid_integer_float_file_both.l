%{
#include<stdio.h>
%}

%%
[0-9]+"."[0-9]+ {
			fprintf(yyout,"%s\n",yytext);
			fprintf(yyout,"%s\n","Float  ");
		    }
[0-9]+ {  fprintf(yyout,"%s",yytext);
	    fprintf(yyout,"%s","Integer");
	 }
. 
%%

int main()
{
extern FILE *yyin,*yyout;
yyin=fopen("valid_integer_float_input.txt","r");
yyout=fopen("valid_integer_float_output.txt","w");
yylex();
return 0;
}

int yywrap()
{
return 1;
}