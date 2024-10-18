%{
  /* definitions */
%}

%%
[a-zA-Z_][a-zA-Z_0-9]*  {printf("Valid\n");}
.+ {printf("Invalid\n");}
\n {return 0;}

%%
int yywrap() {}

main(){
  printf("enter a string:");
  yylex();
  return 0;
}

