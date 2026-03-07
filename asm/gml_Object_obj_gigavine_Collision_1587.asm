.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.d 0.3
cmp.d.v GT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i event_inherited(argc=0)
popz.v

:[end]