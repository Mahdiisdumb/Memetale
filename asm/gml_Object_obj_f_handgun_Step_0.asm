.localvar 0 arguments

:[0]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 164
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 164
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 2.1
pop.v.d self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [8]

:[3]
pushi.e 165
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 1
push.d 0.15
conv.d.v
call.i random(argc=1)
add.v.i
push.d 0.75
conv.d.v
pushi.e 165
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 1634
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.hf
pushi.e 1636
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.hs
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
push.v self.hf
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 16
push.v self.hf
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d -0.2
push.v self.hf
conv.v.i
pop.v.d [stacktop]self.friction

:[5]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -1
push.v self.hf
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e -16
push.v self.hf
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d -0.2
push.v self.hf
conv.v.i
pop.v.d [stacktop]self.friction
push.d -0.5
push.v self.hs
conv.v.i
pop.v.d [stacktop]self.image_xscale

:[7]
pushi.e 25
pop.v.i self.image_index
pushi.e 1
pop.v.i self.image_speed
pushi.e 3
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 5
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [12]

:[11]
pushi.e 7
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]