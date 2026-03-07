.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.shadow
pushi.e 0
pop.v.i self.level
pushi.e 3
pop.v.i self.prev_s
pushi.e 0
pop.v.i self.laser_d
pushi.e 0
pop.v.i self.shadow_num
pushi.e 6
pop.v.i self.shadow_max
pushi.e 758
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.instaborder

:[2]
popenv [1]
pushi.e -1
pop.v.i global.border
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]