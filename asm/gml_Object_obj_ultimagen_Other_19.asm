.localvar 0 arguments

:[0]
push.v self.shotbuffer
pushi.e 3
cmp.i.v GT
bf [end]

:[1]
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.borb
pushi.e 1
push.v self.borb
conv.v.i
pop.v.i [stacktop]self.side
push.v self.borb
conv.v.i
pushenv [3]

:[2]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
pushi.e 569
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
pushi.e 569
pushenv [6]

:[5]
push.v self.seg
call.i caster_stop(argc=1)
popz.v
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
push.v self.seg
call.i caster_play(argc=3)
popz.v

:[6]
popenv [5]

:[7]
pushi.e -1
pop.v.i self.shotbuffer

:[end]