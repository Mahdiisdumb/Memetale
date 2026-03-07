.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 791
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
popz.v
b [end]

:[2]
pushi.e 13
conv.i.v
pushi.e 150
conv.i.v
pushi.e 35
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 130
conv.i.v
pushi.e 35
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]