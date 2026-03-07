.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushbltn.v self.room_speed
pushi.e 40
cmp.i.v LT
bf [3]

:[2]
pushi.e 200
pop.v.i self.room_speed
b [end]

:[3]
pushi.e 30
pop.v.i self.room_speed

:[end]