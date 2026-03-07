.localvar 0 arguments

:[0]
push.v self.havewater
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 366
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.havewater
b [end]

:[2]
pushi.e 0
pushi.e -5
pushi.e 366
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.havewater

:[end]