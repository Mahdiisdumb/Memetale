.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 7
cmp.i.v LT
bf [end]

:[3]
pushi.e -1
pushi.e -5
pushi.e 20
push.v [array]global.flag
conv.v.i
push.v [array]self.m
pop.v.v self.sprite_index

:[end]