package br.com.compiler.scanner;
%%
%public
%class LexicalAnalyzerExample
%{
private void print_value(String lexema, String descricao) {
 System.out.println(lexema + " - " + descricao);
}
%}
%int
%line
%column
NUMERO = [0-9]+
PONTUACAO = \(|\)
OPERADOR = (\*\*|\*|\/|\+|\-)
BRANCO = [\n| |\t|\r]
%%
[0-9]+ 				{ print_value(yytext(), "NUMERO"); }
\(|\) 				{ print_value(yytext(), "PONTUACAO"); }
(\*\*|\*|\/|\+|\-) 	{ print_value(yytext(), "OPERADOR"); }
. { throw new RuntimeException("Lexemas inválidos " + yytext()); }
