.localvar 0 arguments

:[0]
pushglb.v global.attacktype
pushi.e 49
cmp.i.v NEQ
bf [2]

:[1]
push.v global.attacktype
pushi.e 1
add.i.v
pop.v.v global.attacktype
b [3]

:[2]
pushi.e 56
pop.v.i global.attacktype

:[3]
pushbltn.v self.room_first
call.i room_goto(argc=1)
popz.v

:[end]