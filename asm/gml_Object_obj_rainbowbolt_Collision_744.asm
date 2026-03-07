.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.8
cmp.d.v GT
bf [2]

:[1]
push.v self.non
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]