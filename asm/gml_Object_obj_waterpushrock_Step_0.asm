.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 8
pop.v.i self.vspeed
b [3]

:[2]
pushi.e 0
pop.v.i self.vspeed

:[3]
push.v self.y
push.v self.topy
cmp.v.v GT
bf [8]

:[4]
push.v self.speeded
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.phase
pushi.e 1
pop.v.i self.speeded

:[6]
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
bf [8]

:[7]
pushi.e 4
pop.v.i self.vspeed

:[8]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
b [11]

:[10]
push.e 0

:[11]
bf [23]

:[12]
pushi.e 1138
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[13]
push.v 1138.colliding
pushi.e 0
cmp.i.v EQ
bf [23]

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.bbox_bottom
push.v self.vspeed
add.v.v
pushi.e 1
add.i.v
push.v self.bbox_right
push.v self.bbox_bottom
pushi.e 1
add.i.v
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [23]

:[15]
push.v 1576.y
push.v self.vspeed
add.v.v
pop.v.v 1576.y
push.v 1575.up
conv.v.b
bf [17]

:[16]
push.v 1576.y
pushi.e 3
add.i.v
pop.v.v 1576.y

:[17]
push.v 1575.down
conv.v.b
bf [19]

:[18]
push.v self.vspeed
pushi.e 3
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v 1576.y
pushi.e 3
sub.i.v
pop.v.v 1576.y

:[22]
push.v 1576.x
call.i round(argc=1)
pop.v.v 1576.x
push.v 1576.y
call.i round(argc=1)
pop.v.v 1576.y
pushi.e 1
pop.v.i 1138.colliding

:[23]
push.v self.y
push.v self.bottomy
cmp.v.v GT
bf [27]

:[24]
pushi.e 1140
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.d
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2
push.v self.d
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
push.v self.y
pushi.e 350
cmp.i.v GT
bf [end]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[end]