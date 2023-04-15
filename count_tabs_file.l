%{
#include<stdio.h>
int ch=0,tb=0,sp=0,nl=0;
%}

%%
[ ] {sp++;}
[\n] {nl++;}
[\t] {tb++;}
. {ch++;}
%%

int main()
{
extern FILE *yyin,*yyout;
printf("Data is being reading from the file....\n");
yyin=fopen("count_tabs_input.txt","r");
yylex();
printf("Number of spaces %d\n",sp);
printf("NUmber of tabs %d\n",tb);
printf("NUmber of newline %d\n",nl);
printf("NUmber of Characters %d\n",ch);
return 0;
}

int yywrap()
{
return 1;
}