.localvar 0 arguments

:[0]
pushi.e 23
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.open
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 4
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.myinteract

:[end]