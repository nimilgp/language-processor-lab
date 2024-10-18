%{
  int vowelc = 0, consonantc = 0;
%}

%%
[aeiouAEIOU]  {++vowelc;}
[a-zA-Z]  {++consonantc;}
.|\n  {;}
<<EOF>> {return 0;}

%%
int yywrap() {}

int main() {
  yylex();
  printf("vowels: %d\nconsonants: %d\n", vowelc, consonantc);
  return 0;
}
