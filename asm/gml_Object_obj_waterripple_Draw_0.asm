.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
push.v 1576.depth
pushi.e 100
sub.i.v
pop.v.v self.depth
push.v 1576.x
pop.v.v self.x
push.v 1576.y
pop.v.v self.y
push.v self.y2
push.v self.y1
push.v self.x2
push.v self.x1
call.i draw_self_custom(argc=4)
popz.v
push.v 1576.bbox_left
push.v self.x1
pushi.e 5
sub.i.v
cmp.v.v GT
bf [5]

:[2]
push.v 1576.bbox_right
push.v self.x2
pushi.e 5
add.i.v
cmp.v.v LT
bf [5]

:[3]
push.v 1576.bbox_top
push.v self.y1
pushi.e 5
sub.i.v
cmp.v.v GT
bf [5]

:[4]
push.v 1576.bbox_bottom
push.v self.y2
pushi.e 5
add.i.v
cmp.v.v LT
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
push.v 1576.image_index
pushi.e 1
cmp.i.v EQ
bt [9]

:[8]
push.v 1576.image_index
pushi.e 3
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.mp

:[end]