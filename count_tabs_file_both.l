%{
#include<stdio.h>
int sp=0,ch=0,tb=0,nl=0;
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
printf("Input is being reading from the file");
yyin=fopen("count_tabs_input.txt","r");
yyout=fopen("count_tabs_output.txt","w");
yylex();
fprintf(yyout,"%s","Number of spaces are ");
fprintf(yyout,"%d\n",sp);
fprintf(yyout,"%s","Number of tabs are ");
fprintf(yyout,"%d\n",tb);
fprintf(yyout,"%s","Number of new lines are ");
fprintf(yyout,"%d\n",nl);
fprintf(yyout,"%s","Number of characters are ");
fprintf(yyout,"%d\n",ch);

return 0;
}

int yywrap()
{
return 1;
}