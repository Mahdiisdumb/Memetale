.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushbltn.v self.room_speed
pushi.e 2
mul.i.v
call.i round(argc=1)
pop.v.v self.room_speed

:[end]