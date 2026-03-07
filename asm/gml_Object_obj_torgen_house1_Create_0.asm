.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]