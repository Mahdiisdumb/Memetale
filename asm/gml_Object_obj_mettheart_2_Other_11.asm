.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.movetype
pushi.e 400
pop.v.i self.lightning_timer
pushi.e 0
pop.v.i self.visible
pushi.e 450
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mtb
push.v self.xstart
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homex
push.v self.ystart
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homey
pushi.e 409
pushenv [3]

:[1]
push.v self.noarm
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [1]

:[end]