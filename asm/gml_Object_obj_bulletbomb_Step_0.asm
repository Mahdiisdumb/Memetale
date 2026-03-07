.localvar 0 arguments

:[0]
push.v self.shot
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.nowx
pop.v.v self.x
push.v self.nowy
pop.v.v self.y
pushi.e 1
pop.v.i self.image_speed
push.v self.shot2
pushi.e 1
add.i.v
pop.v.v self.shot2
push.v self.shot2
pushi.e 5
cmp.i.v GTE
bf [end]

:[2]
pushi.e 0
pop.v.i self.playdo
push.v self.myloop
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 126
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[4]
pushi.e 442
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.visible
pushi.e -1
pop.v.i self.shot2
pushi.e -1
pop.v.i self.shot

:[end]