
go: lex.yy.c prepos.tab.c 
	gcc prepos.tab.c lex.yy.c -lfl -ly -lm  -o go 

lex.yy.c: prepos.l
	flex prepos.l

prepos.tab.c: prepos.y
	bison -dv prepos.y

clean:
	rm -f lex.yy.c 
	rm -f prepos.output
	rm -f prepos.tab.h
	rm -f prepos.tab.c

