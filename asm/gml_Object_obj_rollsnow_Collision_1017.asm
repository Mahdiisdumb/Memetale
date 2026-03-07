.localvar 0 arguments

:[0]
push.v self.falling
pushi.e 5
cmp.i.v NEQ
bf [14]

:[1]
pushi.e 0
pop.v.i 1347.read
pushi.e 26
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1020
conv.i.v
push.v 1017.y
pushi.e 30
sub.i.v
push.v 1017.x
call.i instance_create(argc=3)
pop.v.v self.iceflag
push.v self.iceflag
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 40
add.i.v
pop.i.v [stacktop]self.y
push.v self.rolltime
pushi.e 180
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
push.v self.iceflag
conv.v.i
pop.v.i [stacktop]self.image_index

:[3]
push.v self.rolltime
pushi.e 240
cmp.i.v GT
bf [5]

:[4]
pushi.e 2
push.v self.iceflag
conv.v.i
pop.v.i [stacktop]self.image_index

:[5]
push.v self.rolltime
pushi.e 330
cmp.i.v GT
bf [7]

:[6]
pushi.e 3
push.v self.iceflag
conv.v.i
pop.v.i [stacktop]self.image_index

:[7]
push.v self.rolltime
pushi.e 450
cmp.i.v GT
bf [9]

:[8]
pushi.e 4
push.v self.iceflag
conv.v.i
pop.v.i [stacktop]self.image_index

:[9]
push.v self.rolltime
pushi.e 600
cmp.i.v GT
bf [11]

:[10]
pushi.e 5
push.v self.iceflag
conv.v.i
pop.v.i [stacktop]self.image_index

:[11]
push.v self.size
push.d 0.6
cmp.d.v LT
bf [13]

:[12]
pushi.e 6
push.v self.iceflag
conv.v.i
pop.v.i [stacktop]self.image_index

:[13]
pushi.e 5
pop.v.i self.falling

:[14]
pushi.e 1
pop.v.i self.friction
push.v self.size
push.d 0.3
cmp.d.v GT
bf [end]

:[15]
push.v self.size
push.d 0.1
sub.d.v
pop.v.v self.size

:[end]