.localvar 0 arguments

:[0]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
cmp.v.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
sub.i.v
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
sub.i.v
cmp.v.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
cmp.v.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[20]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [end]

:[21]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[end]