.localvar 0 arguments

:[0]
push.v self.col
pushi.e 1
sub.i.v
pop.v.v self.col
push.v self.col
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i 1576.vspeed

:[5]
push.v self.col
pushi.e 0
cmp.i.v GT
bf [end]

:[6]
push.v self.x
pop.v.v 1576.x
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [8]

:[7]
push.v 1576.y
pushi.e 4
sub.i.v
pop.v.v 1576.y
b [end]

:[8]
push.v 1576.y
pushi.e 4
add.i.v
pop.v.v 1576.y

:[end]