.localvar 0 arguments

:[0]
push.v 1576.x
push.v self.x
cmp.v.v GT
bf [2]

:[1]
push.v 1576.x
push.v self.hspeed
add.v.v
pop.v.v 1576.x

:[2]
push.v 1576.x
push.v self.x
cmp.v.v LT
bf [4]

:[3]
push.v 1576.x
push.v self.hspeed
add.v.v
pop.v.v 1576.x

:[4]
push.v 1576.bbox_top
push.v self.bbox_bottom
cmp.v.v LT
bf [6]

:[5]
push.v 1576.bbox_bottom
push.v self.bbox_bottom
cmp.v.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v 1576.y
push.v self.vspeed
add.v.v
pop.v.v 1576.y

:[9]
push.v 1576.bbox_bottom
push.v self.bbox_top
cmp.v.v GT
bf [11]

:[10]
push.v 1576.bbox_top
push.v self.bbox_top
cmp.v.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.v 1576.y
push.v self.vspeed
add.v.v
pop.v.v 1576.y

:[14]
push.v 1205.touch
pushi.e 1
add.i.v
pop.v.v 1205.touch

:[end]