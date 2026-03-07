.localvar 0 arguments

:[0]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushbltn.v self.argument0
sub.v.v
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushbltn.v self.argument0
add.v.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
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
pushbltn.v self.argument0
sub.v.v
cmp.v.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
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
pushbltn.v self.argument0
add.v.v
cmp.v.v GT
b [18]

:[17]
push.e 0

:[18]
bf [end]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[end]