.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
pushi.e 678
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gel
push.v self.image_angle
push.v self.i
pushi.e 90
mul.i.v
add.v.v
push.v self.gel
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.snd
push.v self.snd
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 151
conv.i.v
call.i snd_play(argc=1)
popz.v

:[5]
push.v self.snd
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 152
conv.i.v
call.i snd_play(argc=1)
popz.v

:[7]
push.v self.snd
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 153
conv.i.v
call.i snd_play(argc=1)
popz.v

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]