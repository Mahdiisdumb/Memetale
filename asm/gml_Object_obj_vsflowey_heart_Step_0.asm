.localvar 0 arguments

:[0]
push.v self.move
pushi.e 1
cmp.i.v EQ
bf [25]

:[1]
push.v 1575.left
conv.v.b
bf [8]

:[2]
push.v self.x
pushi.e 0
cmp.i.v GT
bf [8]

:[3]
push.v 1591.darkmode
pushi.e 0
cmp.i.v NEQ
bt [5]

:[4]
push.v self.x
pushi.e 108
cmp.i.v GT
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[8]
push.v 1575.right
conv.v.b
bf [15]

:[9]
push.v self.x
pushbltn.v self.room_width
push.v self.sprite_width
sub.v.v
cmp.v.v LT
bf [15]

:[10]
push.v 1591.darkmode
pushi.e 0
cmp.i.v NEQ
bt [12]

:[11]
push.v self.x
pushi.e 512
cmp.i.v LT
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[15]
push.v 1575.up
conv.v.b
bf [22]

:[16]
push.v self.y
pushi.e 0
cmp.i.v GT
bf [22]

:[17]
push.v 1591.darkmode
pushi.e 0
cmp.i.v NEQ
bt [19]

:[18]
push.v self.y
pushi.e 268
cmp.i.v GT
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[22]
push.v 1575.down
conv.v.b
bf [25]

:[23]
push.v self.y
pushbltn.v self.room_height
push.v self.sprite_height
sub.v.v
cmp.v.v LT
bf [25]

:[24]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[25]
push.v global.my_inv
pushi.e 1
sub.i.v
pop.v.v global.my_inv
pushglb.v global.my_inv
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
push.d 0.5
pop.v.d self.image_speed
b [28]

:[27]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[28]
pushglb.v global.my_hp
pushi.e 0
cmp.i.v LTE
bf [30]

:[29]
push.v self.special
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [end]

:[32]
pushi.e 1606
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[end]