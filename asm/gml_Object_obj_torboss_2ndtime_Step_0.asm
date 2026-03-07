.localvar 0 arguments

:[0]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [2]

:[1]
push.v self.blk
push.d 1.8
cmp.d.v GT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 323
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]