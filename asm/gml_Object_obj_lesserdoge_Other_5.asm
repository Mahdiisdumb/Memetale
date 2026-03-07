.localvar 0 arguments

:[0]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[end]