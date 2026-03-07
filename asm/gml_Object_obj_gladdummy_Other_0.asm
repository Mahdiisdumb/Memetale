.localvar 0 arguments

:[0]
push.v self.outside
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 3
pop.v.i 784.halt
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i global.mnfight

:[3]
pushi.e 1
pop.v.i self.outside
call.i instance_destroy(argc=0)
popz.v

:[end]