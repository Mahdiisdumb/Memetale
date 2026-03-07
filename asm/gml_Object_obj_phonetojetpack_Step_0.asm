.localvar 0 arguments

:[0]
push.v self.ptimer
pushi.e 1
add.i.v
pop.v.v self.ptimer
push.v self.ptimer
pushi.e 40
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i self.vspeed

:[2]
push.v self.ptimer
pushi.e 70
cmp.i.v EQ
bf [4]

:[3]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1918
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.334
pop.v.d self.image_speed

:[4]
push.v self.ptimer
pushi.e 70
cmp.i.v GT
bf [7]

:[5]
push.v self.sprite_index
pushi.e 1918
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_index
pushi.e 4
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 4
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[10]
push.v self.ptimer
pushi.e 110
cmp.i.v EQ
bf [12]

:[11]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i self.vspeed

:[12]
push.v self.ptimer
pushi.e 110
cmp.i.v GT
bf [15]

:[13]
push.v self.y
push.v self.ystart
pushi.e 5
sub.i.v
cmp.v.v GT
bf [15]

:[14]
push.v self.align
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i self.align
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.vspeed
push.v self.ystart
pop.v.v self.y

:[18]
push.v self.ptimer
pushi.e 110
cmp.i.v GT
bf [20]

:[19]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_afterimage(argc=2)
pop.v.v self.g
push.d 0.5
push.v self.g
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[23]
push.v self.ptimer
pushi.e 160
cmp.i.v EQ
bf [25]

:[24]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1919
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed

:[25]
push.v self.ptimer
pushi.e 160
cmp.i.v GT
bf [end]

:[26]
push.v self.clip
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.clip
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
pop.v.v self.y

:[end]