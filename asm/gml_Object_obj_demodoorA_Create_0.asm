.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.touched
pushbltn.v self.room
pushi.e 43
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 791
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [end]

:[3]
pushi.e 2
conv.i.v
pushi.e 400
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 400
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]