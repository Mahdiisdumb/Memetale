.localvar 0 arguments

:[0]
push.v self.shake
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
cmp.v.v GT
bf [3]

:[2]
push.v self.xprevious
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[3]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [5]

:[4]
push.v self.xprevious
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[5]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bt [7]

:[6]
push.v self.y
pushi.e 0
cmp.i.v LT
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
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

:[12]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]