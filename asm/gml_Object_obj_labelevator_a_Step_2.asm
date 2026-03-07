.localvar 0 arguments

:[0]
push.v self.dt
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i sprite_create_from_screen_x(argc=8)
pop.v.v self.thispic
pushi.e 1
pop.v.i self.dt

:[end]