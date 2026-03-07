.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.touched
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=10)
pop.v.v self.ch
push.v self.ch
pushi.e 4
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed

:[end]