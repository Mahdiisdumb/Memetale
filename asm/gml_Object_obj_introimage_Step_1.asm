.localvar 0 arguments

:[0]
push.v self.act
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.skip
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fader
push.d 0.05
push.v self.fader
conv.v.i
pop.v.d [stacktop]self.tspeed
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[6]
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.vol
push.d 0.05
sub.d.v
pop.v.v self.vol
push.v self.vol
push.v self.intromusic
call.i caster_set_volume(argc=2)
popz.v

:[8]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.v self.dongs
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 1
pop.v.i self.dongs
pushi.e 96
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[end]