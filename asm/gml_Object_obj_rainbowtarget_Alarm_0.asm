.localvar 0 arguments

:[0]
pushi.e 589
conv.i.v
pushi.e -10
conv.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gig
push.v self.giga
push.v self.gig
conv.v.i
pop.v.v [stacktop]self.giga
push.v self.giga
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 588
pushenv [3]

:[2]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
pushi.e 4
push.v self.gig
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e -2
push.v self.gig
conv.v.i
pop.v.i [stacktop]self.ss
b [7]

:[4]
pushi.e 588
pushenv [6]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]