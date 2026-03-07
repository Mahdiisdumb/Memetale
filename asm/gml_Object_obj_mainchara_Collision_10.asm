.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [24]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [24]

:[2]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_top
pushi.e 2
sub.i.v
push.v self.bbox_right
pushi.e 2
add.i.v
call.i collision_point(argc=5)
pushi.e -4
cmp.i.v EQ
bf [5]

:[4]
push.v self.xprevious
pushi.e 3
add.i.v
pop.v.v self.x
push.v self.yprevious
pushi.e 3
sub.i.v
pop.v.v self.y
b [6]

:[5]
push.v self.xprevious
pop.v.v self.x

:[6]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [10]

:[7]
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
bf [9]

:[8]
push.v self.xprevious
pushi.e 3
sub.i.v
pop.v.v self.x
push.v self.yprevious
pushi.e 3
add.i.v
pop.v.v self.y
b [10]

:[9]
push.v self.yprevious
pop.v.v self.y

:[10]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pushi.e 3
sub.i.v
pop.v.v self.y

:[12]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.v self.yprevious
pop.v.v self.y
push.v self.xprevious
pushi.e 3
sub.i.v
pop.v.v self.x

:[14]
push.v 1575.down
conv.v.b
bf [16]

:[15]
push.v 1575.right
conv.v.b
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y

:[19]
push.v self.x
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [21]

:[20]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[21]
push.v self.y
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [23]

:[22]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[23]
pushi.e 0
pop.v.i self.moving

:[24]
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bt [30]

:[25]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bt [30]

:[26]
pushglb.v global.interact
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
b [31]

:[30]
push.e 1

:[31]
bf [end]

:[32]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y

:[end]