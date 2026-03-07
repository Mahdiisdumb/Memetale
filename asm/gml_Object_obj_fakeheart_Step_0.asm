.localvar 0 arguments

:[0]
push.v global.invc
pushi.e 1
sub.i.v
pop.v.v global.invc
pushglb.v global.invc
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.d 0.5
pop.v.d self.image_speed
b [3]

:[2]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[3]
push.v 1575.left
conv.v.b
bf [8]

:[4]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
b [8]

:[7]
push.v self.x
pushglb.v global.sp
sub.v.v
pop.v.v self.x

:[8]
push.v 1575.right
conv.v.b
bf [13]

:[9]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
b [13]

:[12]
push.v self.x
pushglb.v global.sp
add.v.v
pop.v.v self.x

:[13]
push.v 1575.up
conv.v.b
bf [18]

:[14]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.y
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y
b [18]

:[17]
push.v self.y
pushglb.v global.sp
sub.v.v
pop.v.v self.y

:[18]
push.v 1575.down
conv.v.b
bf [23]

:[19]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [23]

:[20]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.y
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
b [23]

:[22]
push.v self.y
pushglb.v global.sp
add.v.v
pop.v.v self.y

:[23]
pushglb.v global.hp
pushi.e 1
cmp.i.v LT
bf [end]

:[24]
pushi.e 171
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]