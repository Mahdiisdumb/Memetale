.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i self.dmg
push.d 0.2
pop.v.d self.image_speed
pushi.e 260
pushenv [4]

:[1]
push.v self.emotion
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.i
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.badnote
call.i caster_play(argc=3)
popz.v
b [4]

:[3]
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.i
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.note
call.i caster_play(argc=3)
popz.v

:[4]
popenv [1]
push.v 260.emotion
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 4
pop.v.i self.speed
pushi.e 1
pop.v.i self.dep
pushi.e 3
pop.v.i self.detune
pushi.e 1
pop.v.i self.dspeed

:[6]
push.v 260.emotion
pushi.e 1
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.dep
pushi.e 2
pop.v.i self.detune
pushi.e 12
pop.v.i self.dspeed
pushi.e 7
pop.v.i self.speed

:[8]
pushi.e 60
conv.i.v
call.i random(argc=1)
pushi.e 250
add.i.v
pop.v.v self.direction
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 180
conv.i.v
pushi.e 45
conv.i.v
pushi.e 90
conv.i.v
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.gravity_direction
pushi.e 40
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]