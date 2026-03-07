.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 4
cmp.i.v LT
bf [end]

:[1]
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[2]
push.v 283.orderb
pushi.e 4
cmp.i.v EQ
bf [10]

:[3]
pushi.e 30
pop.v.i global.turntimer
pushi.e 283
pushenv [5]

:[4]
pushi.e 40
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[5]
popenv [4]
push.v 283.order
pushi.e 11
cmp.i.v EQ
bf [7]

:[6]
pushi.e -11
pop.v.i 283.lesson

:[7]
pushi.e 283
pushenv [9]

:[8]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]

:[10]
pushi.e 278
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 279
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.deactivate
pushi.e 1
pop.v.i self.fade

:[14]
popenv [13]
call.i instance_destroy(argc=0)
popz.v

:[end]