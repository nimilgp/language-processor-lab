%{
  //definitions
%}

%%
[9][1][0-9]{10} {printf("Valid\n");}
.*  {printf("Invalid\n");}
\n  {return 0;}
%%
int yywrap() {}

int main() {
  printf("enter mobile number: ");
  yylex();
  return 0;
}
