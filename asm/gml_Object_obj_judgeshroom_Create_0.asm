.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 270
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 270
pop.v.i [array]global.flag

:[2]
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.buffer

:[end]