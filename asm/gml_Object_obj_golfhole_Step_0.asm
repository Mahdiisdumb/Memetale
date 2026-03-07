.localvar 0 arguments

:[0]
pushi.e 1019
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1019
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 8
cmp.i.v LT
bf [6]

:[2]
push.v 1019.bbox_bottom
push.v self.bbox_top
cmp.v.v LT
bf [4]

:[3]
push.v 1019.y
push.d 0.2
add.d.v
pop.v.v 1019.y

:[4]
push.v 1019.bbox_top
push.v self.bbox_bottom
cmp.v.v GT
bf [6]

:[5]
push.v 1019.y
push.d 0.2
sub.d.v
pop.v.v 1019.y

:[6]
pushi.e 1019
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 8
cmp.i.v LT
bf [end]

:[7]
push.v 1019.x
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v LT
bf [9]

:[8]
push.v 1019.x
push.d 0.2
add.d.v
pop.v.v 1019.x

:[9]
push.v 1019.x
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v GT
bf [end]

:[10]
push.v 1019.x
push.d 0.2
sub.d.v
pop.v.v 1019.x

:[end]