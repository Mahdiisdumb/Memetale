.localvar 0 arguments

:[0]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.image_xscale
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_xscale
pushi.e -1
mul.i.v
pop.v.v self.image_xscale

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.image_xscale
pushi.e -1
mul.i.v
pop.v.v self.image_xscale

:[10]
push.v self.parent
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[11]
pushi.e 0
pop.v.i self.finish
push.v self.parent
conv.v.i
push.v [stacktop]self.sider
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
push.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [14]

:[13]
pushi.e 1
pop.v.i self.finish

:[14]
push.v self.parent
conv.v.i
push.v [stacktop]self.sider
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [17]

:[16]
pushi.e 1
pop.v.i self.finish

:[17]
push.v self.parent
conv.v.i
push.v [stacktop]self.sider
pop.v.v self.sd
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 70
add.i.v
call.i distance_to_point(argc=2)
pushi.e 80
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.image_xscale
push.d 0.75
mul.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.75
mul.d.v
pop.v.v self.image_yscale

:[22]
push.v self.sd
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 70
sub.i.v
call.i distance_to_point(argc=2)
pushi.e 80
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.v self.image_xscale
push.d 0.75
mul.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.75
mul.d.v
pop.v.v self.image_yscale

:[27]
push.v self.image_xscale
call.i abs(argc=1)
push.d 0.1
cmp.d.v LTE
bf [29]

:[28]
pushi.e 1
pop.v.i self.finish

:[29]
push.v self.finish
pushi.e 1
cmp.i.v EQ
bf [33]

:[30]
push.v self.parent
conv.v.i
pushenv [32]

:[31]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[32]
popenv [31]
call.i instance_destroy(argc=0)
popz.v

:[33]
b [end]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[end]