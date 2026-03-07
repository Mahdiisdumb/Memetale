.localvar 0 arguments

:[0]
push.v self.script
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.e
push.v self.d
push.v self.c
push.v self.b
pushi.e 28
conv.i.v
call.i script_execute(argc=5)
popz.v

:[end]