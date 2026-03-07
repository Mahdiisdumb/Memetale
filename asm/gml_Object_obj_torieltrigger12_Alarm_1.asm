.localvar 0 arguments

:[0]
push.v self.flames
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 878
conv.i.v
push.v 863.y
push.v 863.x
call.i instance_create(argc=3)
popz.v

:[2]
push.v self.flames
pushi.e 3
cmp.i.v GT
bf [4]

:[3]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i self.room_persistent
pushi.e 34
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 22
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
b [end]

:[4]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
push.v self.flames
pushi.e 1
add.i.v
pop.v.v self.flames
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v 878.image_alpha
push.d 0.25
add.d.v
pop.v.v 878.image_alpha
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.flames
pushi.e 4
cmp.i.v EQ
bf [end]

:[5]
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]