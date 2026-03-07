.localvar 0 arguments

:[0]
push.v self.wavein
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1136
pushenv [3]

:[2]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[3]
popenv [2]
pushi.e 1
pop.v.i global.interact
pushi.e 113
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.waver
push.i 100000
push.v self.waver
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.waver
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pop.v.i self.wavein

:[4]
push.v self.wavein
pushi.e 2
cmp.i.v GTE
bf [end]

:[5]
pushi.e 3
pop.v.i self.wavein
pushi.e 1136
pushenv [7]

:[6]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]

:[end]