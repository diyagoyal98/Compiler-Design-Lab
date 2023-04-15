%{
#include<stdio.h>
%}

%%
[ |\t|\n] {}
. {printf("%s",yytext);}
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