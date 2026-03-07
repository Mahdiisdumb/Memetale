.localvar 0 arguments

:[0]
push.v self.con
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 138
add.i.v
pushglb.v global.faceemotion
pushi.e 628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[3]
push.v self.onoff
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.onoff
b [6]

:[5]
pushi.e 0
pop.v.i self.onoff

:[6]
push.v self.onoff
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 360
add.i.v
pushi.e 0
conv.i.v
pushi.e 78
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v self.firetimer
pushi.e 1
add.i.v
pop.v.v self.firetimer
push.v self.firetimer
pushi.e 40
cmp.i.v GT
bf [10]

:[9]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.kk
pushi.e 0
pop.v.i self.firetimer
push.d 1.5
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [12]

:[11]
pushi.e 3
pop.v.i global.faceemotion
push.v self.kk
pushi.e 1
add.i.v
pop.v.v self.kk
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 360
add.i.v
push.v self.firetimer
pushi.e 10
mul.i.v
sub.v.v
push.v self.kk
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 78
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i self.con

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [17]

:[15]
push.v self.firetimer
pushi.e 1
add.i.v
pop.v.v self.firetimer
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 360
add.i.v
push.v self.firetimer
pushi.e 20
mul.i.v
sub.v.v
push.v self.firetimer
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 78
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.firetimer
pushi.e 9
cmp.i.v GT
bf [17]

:[16]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e -20
pop.v.i self.hspeed
pushi.e -4
pop.v.i self.vspeed
pushi.e 10
pop.v.i self.gravity
pushi.e 270
pop.v.i self.gravity_direction
push.v self.image_angle
pushi.e 3
add.i.v
pop.v.v self.image_angle
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2402
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[19]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[end]