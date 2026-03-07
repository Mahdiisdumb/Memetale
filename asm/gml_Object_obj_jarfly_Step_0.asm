.localvar 0 arguments

:[0]
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 306
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[1]
push.v 306.image_alpha
pop.v.v self.image_alpha
push.v self.x
push.v 306.bbox_right
cmp.v.v GT
bf [4]

:[2]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[4]
push.v self.x
push.v 306.bbox_left
cmp.v.v LT
bf [7]

:[5]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[7]
push.v self.y
push.v 306.bbox_top
cmp.v.v LT
bf [10]

:[8]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[10]
push.v self.y
push.v 306.bbox_bottom
cmp.v.v GT
bf [13]

:[11]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[13]
b [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]