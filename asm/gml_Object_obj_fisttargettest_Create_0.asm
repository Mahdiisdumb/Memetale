.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myscore
pushi.e 274
pop.v.i self.check
pushi.e 0
pop.v.i self.thensc
pushi.e 274
push.v self.x
add.v.i
pop.v.v self.fatalx
pushi.e -80
pop.v.i self.wherex
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.lr
pushi.e 60
conv.i.v
pushi.e 40
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=3)
pop.v.v self.factor
push.v self.factor
pushi.e 30
add.i.v
pop.v.v self.factor
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -80
push.v self.factor
add.v.i
pop.v.v self.wherex
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -80
push.v self.factor
pushi.e 2
mul.i.v
add.v.i
pop.v.v self.wherex
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -80
push.v self.factor
add.v.i
pop.v.v self.wherex
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -80
push.v self.factor
pushi.e 2
mul.i.v
add.v.i
pop.v.v self.wherex
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]