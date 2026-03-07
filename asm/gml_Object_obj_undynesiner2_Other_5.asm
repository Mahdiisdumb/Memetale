.localvar 0 arguments

:[0]
push.v self.drawngr
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.gr
call.i sprite_delete(argc=1)
popz.v

:[end]