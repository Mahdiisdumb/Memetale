.localvar 0 arguments

:[0]
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.gr
call.i sprite_delete(argc=1)
popz.v

:[end]