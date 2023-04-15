%{
#include<stdio.h>
%}

%%
[ |\n|\t] {}
. {printf("%s",yytext);}
%%

int main()
{
extern FILE *yyin;
yyin=fopen("remove_tabs_input.txt","r");
printf("Input is being reading from the file\n");
printf("Output is \n");
yylex();
return 0;
}

int yywrap()
{
return 1;
}