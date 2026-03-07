.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [16]

:[4]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.relx
push.v 1632.x
add.v.v
pop.v.v self.x
push.v self.rely
push.v 1632.y
add.v.v
pop.v.v self.y
push.v 1632.image_angle
push.v self.inita
add.v.v
pop.v.v self.image_angle

:[6]
push.v self.y
pushbltn.v self.room_height
pushi.e 60
add.i.v
cmp.v.v GT
bf [8]

:[7]
push.v self.y
push.v self.sprite_width
pushi.e 6
mul.i.v
sub.v.v
pop.v.v self.y
push.v self.rely
push.v self.sprite_width
pushi.e 6
mul.i.v
sub.v.v
pop.v.v self.rely

:[8]
push.v self.y
pushi.e -60
cmp.i.v LT
bf [10]

:[9]
push.v self.y
push.v self.sprite_width
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.y
push.v self.rely
push.v self.sprite_width
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.rely

:[10]
push.v self.x
pushbltn.v self.room_width
pushi.e 60
add.i.v
cmp.v.v GT
bf [12]

:[11]
push.v self.x
push.v self.sprite_width
pushi.e 7
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.relx
push.v self.sprite_width
pushi.e 7
mul.i.v
sub.v.v
pop.v.v self.relx

:[12]
push.v self.x
pushi.e -60
cmp.i.v LT
bf [14]

:[13]
push.v self.x
push.v self.sprite_width
pushi.e 7
mul.i.v
add.v.v
pop.v.v self.x
push.v self.relx
push.v self.sprite_width
pushi.e 7
mul.i.v
add.v.v
pop.v.v self.relx

:[14]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.v self.shake
push.d 0.2
add.d.v
pop.v.v self.shake
push.v self.x
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.y

:[16]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
pushi.e 1587
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.dd
pushi.e 1
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.dd
pushi.e 240
cmp.i.v LT
bf [19]

:[18]
pushi.e 2
pop.v.i self.speed

:[19]
push.v self.dd
pushi.e 180
cmp.i.v LT
bf [21]

:[20]
pushi.e 3
pop.v.i self.speed

:[21]
push.v self.dd
pushi.e 120
cmp.i.v LT
bf [23]

:[22]
pushi.e 4
pop.v.i self.speed

:[23]
push.v self.dd
pushi.e 60
cmp.i.v LT
bf [25]

:[24]
pushi.e 5
pop.v.i self.speed

:[25]
push.v self.dd
pushi.e 30
cmp.i.v LT
bf [27]

:[26]
pushi.e 6
pop.v.i self.speed

:[27]
push.v self.image_angle
push.v self.speed
add.v.v
pop.v.v self.image_angle

:[end]