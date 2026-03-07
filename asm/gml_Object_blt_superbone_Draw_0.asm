.localvar 0 arguments

:[0]
call.i draw_self_border(argc=0)
popz.v
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 40
add.i.v
cmp.v.v LT
bf [4]

:[1]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
add.i.v
cmp.v.v GT
bf [4]

:[2]
push.v 744.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 60
sub.i.v
cmp.v.v GT
bf [4]

:[3]
push.v self.appear
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.appear
push.v 744.y
pop.v.v self.y

:[7]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
cmp.v.v LT
bf [9]

:[8]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 5
pop.v.i global.border

:[12]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
cmp.v.v LT
bf [14]

:[13]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
add.i.v
cmp.v.v GT
bf [19]

:[18]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
pushglb.v global.invc
pushi.e 2
cmp.i.v LT
bf [24]

:[23]
push.v 744.x
pushi.e 30
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 80
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[27]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]