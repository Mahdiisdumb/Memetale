.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.dmg
push.v self.dmg
pop.v.v self.dmg2
pushi.e 20
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.object_index
pushbltn.v self.room_height
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_line(argc=7)
conv.v.b
bf [5]

:[1]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[3]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x

:[5]
push.d -1.5
pop.v.d self.vspeed
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 2
add.i.v
pop.v.v self.y
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
cmp.v.v GT
bf [7]

:[6]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x

:[7]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [9]

:[8]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
call.i random(argc=1)
add.v.v
pop.v.v self.x

:[9]
push.v self.object_index
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [14]

:[10]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[12]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.object_index
pushbltn.v self.room_height
push.v 744.x
pushi.e 0
conv.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v LT
bf [16]

:[15]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 647
conv.i.v
pushbltn.v self.room_height
push.v 744.x
pushi.e 0
conv.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [end]

:[18]
pushi.e 6
push.v 744.x
add.v.i
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x

:[end]