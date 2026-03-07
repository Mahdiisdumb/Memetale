.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_monsterdefeat(argc=5)
popz.v
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
pushi.e 155
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.visible

:[2]
popenv [1]
push.v global.xp
pushi.e 150
add.i.v
pop.v.v global.xp
pushi.e 59
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 184
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 186
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 756
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 758
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[end]