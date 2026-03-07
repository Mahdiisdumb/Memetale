.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.shadow
pushi.e 12
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.level
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
push.v self.level
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[4]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 503
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 513
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 501
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 502
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 516
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 500
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 499
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
push.v self.shadow_num
push.v self.shadow_max
cmp.v.v GTE
bf [20]

:[19]
pushi.e 0
pop.v.i global.border

:[20]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 758
pushenv [22]

:[21]
pushi.e 0
pop.v.i self.visible

:[22]
popenv [21]

:[end]