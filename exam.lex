%{
  #include <stdio.h>
  FILE *out;
%}

NOVOW [[:alnum:]]{-}[aeiou]
VOW [aeiou]
NOB [[:alnum:]]{-}[b]

%%
{NOVOW}*{VOW}{NOVOW}*[[:blank:]]|{NOB}*"bbb"{NOB}*[[:blank:]] {fprintf(out, "%s ", yytext);}
. {;}

%%
int yywrap() {}

int main(int argc, char *argv[]){
  FILE *in = fopen(argv[1], "r");
  out = fopen(argv[2], "w");
  yyin = in;
  yylex();
  fclose(in);
  fclose(out);
  return 0;
}
