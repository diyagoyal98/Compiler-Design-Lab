%{
#include<stdio.h>
int termin=0,iden=0,keyw=0;
%}

%%
if|else|for|while|int|chr|float|long|bool {	
								keyw++;
								printf("%s ",yytext);
								printf("%s\n","Keyword");
							}
[_|a-z|A-Z]+[_|a-z|A-Z|0-9]* {
					 iden++;
					 printf("%s ",yytext);
					 printf("%s\n","Identifier");
				     }
[0-9]*"."[0-9]* {
			printf("%s ",yytext);
			printf("%s\n","Float");
		    }
[0-9]* {
		printf("%s ",yytext);
		printf("%s\n","Integer");
	 }
[;]  {
	 printf("%s ",yytext);
       printf("%s\n","Terminator");
     }
[+|*|/|%|=|==|<|>|<=|>=]  {
		printf("%s ",yytext);
		printf("%s\n","Operators");
	    }
[(|)|{|}] {
		printf("%s ",yytext);
		printf("%s\n","Brackets");
	  }
 . {}		 

%%

int main()
{
printf("Enter the input\n");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
