.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y
pushi.e 15
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 185
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
pushi.e 0
pop.v.i global.vshake
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]