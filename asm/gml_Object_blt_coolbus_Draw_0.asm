.localvar 0 arguments

:[0]
call.i draw_self_border(argc=0)
popz.v
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
sub.i.v
cmp.v.v LT
bf [2]

:[1]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
add.i.v
cmp.v.v GT
bf [7]

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushi.e 640
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [25]

:[11]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v LT
bf [25]

:[12]
push.v 1575.up
conv.v.b
bf [16]

:[13]
push.v self.movinged
pushi.e 0
cmp.i.v EQ
bf [16]

:[14]
push.v 744.x
push.v 640.x
pushi.e 20
add.i.v
cmp.v.v LT
bf [16]

:[15]
push.v 744.y
pushi.e 50
cmp.i.v GT
b [17]

:[16]
push.e 0

:[17]
bf [25]

:[18]
pushi.e 51
pop.v.i global.border
push.v 744.y
pushi.e 270
cmp.i.v LT
bf [20]

:[19]
push.v 744.y
pushi.e 20
sub.i.v
pushi.e 5
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 5
mul.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder

:[20]
pushi.e 639
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.movinged

:[22]
popenv [21]
push.v 744.vspeed
pushi.e -2
cmp.i.v GTE
bf [25]

:[23]
push.v 744.yprevious
push.v 744.y
cmp.v.v GT
bf [25]

:[24]
pushi.e -2
pop.v.i 744.vspeed

:[25]
pushi.e 0
pop.v.i self.movinged
pushglb.v global.invc
pushi.e 2
cmp.i.v LT
bf [27]

:[26]
push.v 744.x
pushi.e 25
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 50
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bf [end]

:[29]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
push.v self.x
pushi.e 55
add.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[30]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]