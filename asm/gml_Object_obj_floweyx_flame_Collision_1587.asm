.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_index
pushi.e 18
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i event_inherited(argc=0)
popz.v

:[end]