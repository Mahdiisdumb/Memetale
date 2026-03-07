.localvar 0 arguments

:[0]
push.v self.normal
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.destroy
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 0
pop.v.i self.speed
pushi.e 288
pushenv [6]

:[5]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]
pushi.e 289
pushi.e 5
push.v [array]self.alarm
pushi.e 2
cmp.i.v LT
bf [10]

:[7]
pushi.e 289
pushenv [9]

:[8]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]

:[10]
pushi.e 288
pushenv [12]

:[11]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
popenv [11]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[14]
pushi.e 1
pop.v.i self.destroy
pushi.e 0
pop.v.i self.normal

:[end]