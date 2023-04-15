%{
#include<stdio.h>
#include<string.h>
char replace[]="a";
char replace_with[]="best";
%}

%%
[a-z|A-Z] {
		if(strcmp(yytext,replace)==0)
		fprintf(yyout,"%s",replace_with);
		else
		fprintf(yyout,"%s",yytext);
	     }	
. fprintf(yyout,"%s",yytext);
%%

int main()
{
extern FILE *yyin,*yyout;
printf("Input is being reading from the file\n");
yyin=fopen("replace_word_file_input.txt","r");
yyout=fopen("replace_word_file_output.txt","w");
yylex();
return 0;
}
int yywrap()
{
return 1;
}