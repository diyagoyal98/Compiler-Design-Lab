%{
#include<stdio.h>
#include<string.h>
char replace[]="a";
char replace_with[]="best";
%}

%%
[a-z|A-Z] {
		if(strcmp(yytext,replace)==0)
		printf("%s",replace_with);
		else
		printf("%s",yytext);
	    }
. {printf("%s",yytext);}

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
