.localvar 0 arguments

:[0]
push.v self.drawnlab
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.lab
call.i sprite_exists(argc=1)
conv.v.b
bf [end]

:[2]
push.v self.lab
call.i sprite_delete(argc=1)
popz.v

:[end]