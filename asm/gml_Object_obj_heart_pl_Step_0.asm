.localvar 0 arguments

:[0]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v GT
bf [2]

:[1]
push.v 1575.left
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[5]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v LT
bf [7]

:[6]
push.v 1575.right
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[10]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [12]

:[11]
push.v 1575.up
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[15]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v LT
bf [17]

:[16]
push.v 1575.down
conv.v.b
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[20]
pushi.e 0
pop.v.i self.shot
pushi.e 740
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bt [22]

:[21]
push.v self.charge
pushi.e 0
cmp.i.v LT
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.shot

:[25]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [27]

:[26]
push.v self.shot
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 740
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pop.v.i self.charge

:[30]
push.v self.charge
pushi.e 1
sub.i.v
pop.v.v self.charge
push.v global.testinv
pushi.e 1
sub.i.v
pop.v.v global.testinv
pushglb.v global.testinv
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
pushi.e 1
pop.v.i self.image_speed
b [end]

:[32]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[end]