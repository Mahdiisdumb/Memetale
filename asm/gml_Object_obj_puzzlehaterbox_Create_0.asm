.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.dm
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.dm

:[2]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.dm

:[4]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.dm

:[6]
push.v self.dm
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[8]
pushi.e 0
pop.v.i self.spec

:[end]