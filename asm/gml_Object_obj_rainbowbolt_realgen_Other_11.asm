.localvar 0 arguments

:[0]
pushi.e 1588
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shk
pushi.e 8
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakex
pushi.e 8
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakey
push.v self.h_mode
pushi.e 0
cmp.i.v EQ
bf [9]

:[3]
push.v self.hit
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.d 0.75
conv.d.v
push.d 0.8
conv.d.v
push.v self.lithit
call.i caster_play_l(argc=3)
popz.v

:[5]
push.v self.hit
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.d 0.65
conv.d.v
push.d 0.8
conv.d.v
push.v self.lithit2
call.i caster_play_l(argc=3)
popz.v

:[7]
push.v self.hit
pushi.e 5
cmp.i.v EQ
bf [9]

:[8]
push.d 0.9
conv.d.v
push.d 0.9
conv.d.v
push.v self.lithit
call.i caster_play_l(argc=3)
popz.v

:[9]
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [20]

:[10]
push.v self.hit
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.d 0.6
conv.d.v
push.d 0.8
conv.d.v
push.v self.lithit
call.i caster_play_l(argc=3)
popz.v

:[12]
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.d 0.65
conv.d.v
push.d 0.8
conv.d.v
push.v self.lithit2
call.i caster_play_l(argc=3)
popz.v

:[14]
push.v self.hit
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.d 0.7
conv.d.v
push.d 0.8
conv.d.v
push.v self.lithit
call.i caster_play_l(argc=3)
popz.v

:[16]
push.v self.hit
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.d 0.75
conv.d.v
push.d 0.8
conv.d.v
push.v self.lithit2
call.i caster_play_l(argc=3)
popz.v

:[18]
push.v self.hit
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
push.v self.lithit
call.i caster_play_l(argc=3)
popz.v

:[20]
push.v self.hit
pushi.e 1
add.i.v
pop.v.v self.hit

:[end]