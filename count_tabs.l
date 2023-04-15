%{
#include<stdio.h>
int sp=0,tb=0,nl=0,ch=0;
%}

%%
[ ] {sp++;}
[\t] {tb++;}
[\n] {nl++;}
. {ch++;}
%%

int main()
{
printf("Enter the input ");
yylex();
printf("Number of Spaces %d\n",sp);
printf("NUmber of Tabs %d\n",tb);
printf("NUmber of New Line %d\n",nl);
printf("NUmber of Characters %d\n",ch);
return 0;
}
int yywrap()
{
return 1;
}