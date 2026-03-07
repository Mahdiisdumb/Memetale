.localvar 0 arguments

:[0]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bt [2]

:[1]
push.v self.y
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.image_angle
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.image_angle
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[7]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]