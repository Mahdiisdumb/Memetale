.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v other.phase
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [33]

:[5]
push.v 1575.up
conv.v.b
bf [19]

:[6]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.y
pushi.e 19
add.i.v
push.v self.x
pushi.e 18
add.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
pushi.e 0
cmp.i.v GT
bf [18]

:[7]
push.v 1575.left
conv.v.b
bf [9]

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_top
push.v self.bbox_left
push.v self.bbox_top
push.v self.bbox_left
pushi.e 3
sub.i.v
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
pushi.e 3
pop.v.i global.facing

:[12]
push.v 1575.right
conv.v.b
bf [14]

:[13]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_top
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_right
pushi.e 3
add.i.v
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x
pushi.e 1
pop.v.i global.facing

:[17]
b [19]

:[18]
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y
pushi.e 2
pop.v.i global.facing

:[19]
push.v 1575.down
conv.v.b
bf [33]

:[20]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 18
add.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
pushi.e 0
cmp.i.v GT
bf [32]

:[21]
push.v 1575.left
conv.v.b
bf [23]

:[22]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_left
push.v self.bbox_bottom
push.v self.bbox_left
pushi.e 3
sub.i.v
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v LT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
pushi.e 3
pop.v.i global.facing

:[26]
push.v 1575.right
conv.v.b
bf [28]

:[27]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_bottom
push.v self.bbox_right
pushi.e 3
add.i.v
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x
pushi.e 1
pop.v.i global.facing

:[31]
b [33]

:[32]
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i global.facing

:[33]
pushi.e 0
pop.v.i self.moving

:[end]