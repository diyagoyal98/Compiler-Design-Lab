%{
#include<stdio.h>
int termin=0,iden=0,keyw=0;
%}

%%

if|else|for|while|int|chr|float|long|bool|include|main|return|stdio  {	
								                 keyw++;
										     fprintf(yyout,"%s ",yytext);
										     fprintf(yyout,"%s\n","Keyword");
										   }
[_|a-z|A-Z]+[_|a-z|A-Z|0-9]* {
					 iden++;
					 fprintf(yyout,"%s ",yytext);
					 fprintf(yyout,"%s\n","Identifier");
				     }
[0-9]*"."[0-9]* {
			fprintf(yyout,"%s ",yytext);
			fprintf(yyout,"%s\n","Float");
		    }
[0-9]* {
		fprintf(yyout,"%s ",yytext);
		fprintf(yyout,"%s\n","Integer");
	 }
[;]  {
	 fprintf(yyout,"%s ",yytext);
       fprintf(yyout,"%s\n","Terminator");
     }
[+|*|/|%|=|==|<|>|<=|>=|.]  {
		fprintf(yyout,"%s ",yytext);
		fprintf(yyout,"%s\n","Operators");
	    }
[(|)|{|}] {
		fprintf(yyout,"%s ",yytext);
		fprintf(yyout,"%s\n","Brackets");
	  }
 . {}		 

%%

int main()
{
extern FILE *yyin,*yyout;
printf("Input is being reading from the file\n");
yyin=fopen("valid_token_input_file.txt","r");
yyout=fopen("valid_token_output_file.txt","w");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
