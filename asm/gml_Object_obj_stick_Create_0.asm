.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 35
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [7]

:[2]
push.s "music/sticksnap.ogg"@2641
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.snap
pushi.e 0
pop.v.i self.broken
pushi.e -5
pushi.e 47
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.broken

:[4]
pushi.e -5
pushi.e 275
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.broken

:[6]
pushi.e 0
pop.v.i self.image_speed
pushi.e 990
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2650
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 989
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2725
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 988
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3400
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 988
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3440
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 988
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4040
conv.i.v
call.i instance_create(argc=3)
popz.v

:[7]
pushi.e 0
pop.v.i self.myinteract

:[end]