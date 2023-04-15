%{
#include<stdio.h>
%}

%%
[ |\t|\n] {}
. {fprintf(yyout,"%s",yytext);}
%%

int main()
{
extern FILE *yyin,*yyout;
printf("Input is being reading from the file\n");
yyin=fopen("remove_tabs_input.txt","r");
yyout=fopen("remove_tabs_output.txt","w");
yylex();
return 0;
}
int yywrap()
{
return 1;
}