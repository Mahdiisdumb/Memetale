.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 858
pop.v.i self.sprite_index

:[2]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 859
pop.v.i self.sprite_index

:[end]