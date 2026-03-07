.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.num
pushi.e 12
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 1618
conv.i.v
pushi.e 400
conv.i.v
pushbltn.v self.room_width
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
b [4]

:[3]
pushi.e 1619
conv.i.v
pushi.e 400
conv.i.v
pushbltn.v self.room_width
pushi.e 50
add.i.v
call.i instance_create(argc=3)
popz.v

:[4]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num
pushi.e 24
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]