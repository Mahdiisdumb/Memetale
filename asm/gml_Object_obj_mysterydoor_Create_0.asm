.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "s_key"@3067
conv.s.v
push.s "reset"@3068
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.on
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1347
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 1347
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
b [end]

:[2]
pushi.e 1
pop.v.i self.image_index
pushi.e 813
conv.i.v
push.v self.y
pushi.e 37
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]