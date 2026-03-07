.localvar 0 arguments

:[0]
pushi.e 1592
pushenv [2]

:[1]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 1587
pushenv [4]

:[3]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
pushi.e 1644
pushenv [6]

:[5]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]
pushi.e 1643
pushenv [8]

:[7]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]
pushi.e 1642
pushenv [10]

:[9]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
popenv [9]
pushi.e 1587
pushenv [12]

:[11]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
popenv [11]
pushglb.v global.my_hp
pop.v.v self.save_hp
pushglb.v global.my_inv
pop.v.v self.save_inv
pushi.e 20
pop.v.i self.savetimer
pushi.e -1
pop.v.i self.loadtimer
pushi.e 2
pop.v.i self.fileset

:[end]