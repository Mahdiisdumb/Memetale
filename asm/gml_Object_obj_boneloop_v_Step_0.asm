.localvar 0 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [3]

:[1]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
cmp.v.v LT
bf [3]

:[2]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.y

:[3]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [6]

:[4]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [6]

:[5]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pop.v.v self.y

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.x
pushi.e 0
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]