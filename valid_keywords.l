%{
#include<stdio.h>
%}


%%
if|else|switch|while|for {
					printf("%s ",yytext);
					printf("%s\n","valid keyword");
				 }
.+ {
	printf("%s ",yytext);
	printf("%s\n","Invalid Keyword");
  }
%%

int main()
{
printf("Enter the input\n");
yylex();
return 0;
}

int yywrap()
{
return 0;
}