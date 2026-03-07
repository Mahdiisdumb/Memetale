.localvar 0 arguments

:[0]
push.v self.mys
push.v self.mysadd
add.v.v
pop.v.v self.mys
pushi.e 475
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.hl
push.v self.mys
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.s
push.v self.mysf
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.sf
push.v self.mysv
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.sv
push.d 5.5
push.v self.selfspeed
add.v.d
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.vspeed
pushi.e 475
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.hl2
push.v self.mys
push.v self.hl2
conv.v.i
pop.v.v [stacktop]self.s
push.v self.mysf
push.v self.hl2
conv.v.i
pop.v.v [stacktop]self.sf
push.v self.mysv
neg.v
push.v self.hl2
conv.v.i
pop.v.v [stacktop]self.sv
push.d 5.5
push.v self.selfspeed2
add.v.d
push.v self.hl2
conv.v.i
pop.v.v [stacktop]self.vspeed
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.count
pushi.e 1
add.i.v
pop.v.v self.count
push.v self.count
pushi.e 15
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]