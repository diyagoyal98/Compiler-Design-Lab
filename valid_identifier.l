%{
#include<stdio.h>
%}

%%
[_|a-z|A-Z]+[_|a-z|A-Z|0-9]* {
					 printf("%s ",yytext);
					 printf("%s","is valid identifier\n");
				     }
.+ {
	printf("%s ",yytext);
	printf("%s","is not a valid identifier\n");
  }
%%

int main()
{
printf("Enter the input \n");
yylex();
return 0;
}

int yywrap()
{
return 1;
}
