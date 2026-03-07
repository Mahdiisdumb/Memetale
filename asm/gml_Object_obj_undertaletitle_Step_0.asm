.localvar 0 arguments

:[0]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.entrance
pushi.e 1
pop.v.i global.facing
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.phone
pushi.e 206
pushi.e -5
pushi.e 0
pop.v.i [array]global.phone
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v
pushi.e 44
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]