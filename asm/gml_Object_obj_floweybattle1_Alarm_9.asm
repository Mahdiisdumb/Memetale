.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 15
cmp.i.v LTE
bf [end]

:[1]
pushi.e 52
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 3
pop.v.i global.hshake
push.d 1.5
pop.v.d global.shakespeed
pushi.e 3
pop.v.i global.vshake
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 612
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e -800
pop.v.i 612.x

:[3]
pushi.e 16
pop.v.i self.conversation
pushi.e 0
pop.v.i self.image_speed
pushi.e 608
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 200
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 60
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[end]