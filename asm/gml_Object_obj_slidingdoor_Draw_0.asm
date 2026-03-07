.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.slidedoorx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1962
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [18]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[2]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 40
cmp.i.v LT
bf [4]

:[3]
push.v self.on
pushi.e -1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bt [7]

:[6]
push.v self.on
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.on

:[10]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 60
cmp.i.v GT
bf [12]

:[11]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bt [15]

:[14]
push.v self.on
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
pushi.e -1
pop.v.i self.on

:[18]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [25]

:[19]
pushi.e 0
pop.v.i self.c_noise
pushi.e 0
pop.v.i self.s_noise
push.v self.o_noise
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 122
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.o_noise

:[21]
push.v self.slidedoorx
pushi.e 40
cmp.i.v LT
bf [23]

:[22]
push.v self.slidedoorx
pushi.e 5
add.i.v
pop.v.v self.slidedoorx
b [25]

:[23]
pushi.e 0
pop.v.i self.on
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 123
conv.i.v
call.i snd_play(argc=1)
popz.v

:[25]
push.v self.on
pushi.e -1
cmp.i.v EQ
bf [end]

:[26]
pushi.e 0
pop.v.i self.o_noise
pushi.e 0
pop.v.i self.s_noise
push.v self.c_noise
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 121
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.c_noise

:[28]
push.v self.slidedoorx
pushi.e 0
cmp.i.v GT
bf [30]

:[29]
push.v self.slidedoorx
pushi.e 5
sub.i.v
pop.v.v self.slidedoorx
b [end]

:[30]
pushi.e 0
pop.v.i self.slidedoorx
pushi.e 0
pop.v.i self.on
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [end]

:[31]
pushi.e 123
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]