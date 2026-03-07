.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
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
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 821
pop.v.i self.sprite_index

:[2]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 822
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
pushi.e 823
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
pushi.e 822
pop.v.i self.sprite_index
pushi.e 8
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [10]

:[9]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -15
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.gravity
pushi.e 823
pop.v.i self.sprite_index
pushi.e 10
pop.v.i self.con

:[10]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [13]

:[11]
push.v self.vspeed
pushi.e -12
cmp.i.v GTE
bf [13]

:[12]
pushi.e 824
pop.v.i self.sprite_index
pushi.e 172
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 11
pop.v.i self.con

:[13]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [end]

:[14]
push.v self.y
push.v self.ystart
pushi.e 2
sub.i.v
cmp.v.v GT
bf [end]

:[15]
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e 12
pop.v.i self.con

:[end]