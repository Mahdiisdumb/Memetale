.localvar 0 arguments

:[0]
push.v self.go
pushi.e 1
cmp.i.v EQ
bf [15]

:[1]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 400
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[7]
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 2
pop.v.i self.go
pushi.e 0
pop.v.i self.vspeed
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.y
pushi.e 250
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[14]
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 2
pop.v.i self.go
pushi.e 0
pop.v.i self.vspeed
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.go
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v self.nowx
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.nowy
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[17]
push.v self.go
pushi.e 3
cmp.i.v EQ
bf [28]

:[18]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 250
cmp.i.v LT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.v self.y
pushi.e 400
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
pushi.e 0
pop.v.i self.hit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [30]

:[29]
pushi.e 1
pop.v.i self.hit

:[30]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [33]

:[31]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e 188
conv.i.v
pushi.e 33
conv.i.v
pushi.e 144
conv.i.v
pushi.e 6
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [33]

:[32]
pushi.e 1
pop.v.i self.hit

:[33]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [36]

:[34]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e 52
conv.i.v
pushi.e 33
conv.i.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [36]

:[35]
pushi.e 1
pop.v.i self.hit

:[36]
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [end]

:[37]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]