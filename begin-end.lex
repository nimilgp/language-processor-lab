%{
  #include <stdio.h>
  FILE *out;
%}

%%
"{" {fprintf(out, "BEGIN");}
"}" {fprintf(out, "END");}
.|\n  {fprintf(out, "%s", yytext);}

%%
int yywrap() {}

int main(int argc, char *argv[]){
  FILE *in = fopen(argv[1], "r");
  out = fopen(argv[2], "w");
  yyin = in;
  yylex();
  fclose(in);
  fclose(out);
}
