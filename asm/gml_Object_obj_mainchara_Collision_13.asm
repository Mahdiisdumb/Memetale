.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [25]

:[4]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_bottom
pushi.e 3
add.i.v
push.v self.bbox_left
pushi.e 3
sub.i.v
call.i collision_point(argc=5)
pushi.e -4
cmp.i.v EQ
bf [7]

:[6]
push.v self.xprevious
pushi.e 3
sub.i.v
pop.v.v self.x
push.v self.yprevious
pushi.e 3
add.i.v
pop.v.v self.y
b [8]

:[7]
push.v self.xprevious
pop.v.v self.x

:[8]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [12]

:[9]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_top
pushi.e 3
sub.i.v
push.v self.bbox_right
pushi.e 3
add.i.v
call.i collision_point(argc=5)
pushi.e -4
cmp.i.v EQ
bf [11]

:[10]
push.v self.xprevious
pushi.e 3
add.i.v
pop.v.v self.x
push.v self.yprevious
pushi.e 3
sub.i.v
pop.v.v self.y
b [12]

:[11]
push.v self.yprevious
pop.v.v self.y

:[12]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pushi.e 3
add.i.v
pop.v.v self.y

:[14]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.yprevious
pop.v.v self.y
push.v self.xprevious
pushi.e 3
add.i.v
pop.v.v self.x

:[16]
push.v 1575.up
conv.v.b
bf [18]

:[17]
push.v 1575.left
conv.v.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y

:[21]
pushi.e 0
pop.v.i self.moving
push.v self.x
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [23]

:[22]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[23]
push.v self.y
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [25]

:[24]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[25]
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bt [31]

:[26]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bt [31]

:[27]
pushglb.v global.interact
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
b [32]

:[31]
push.e 1

:[32]
bf [end]

:[33]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y

:[end]