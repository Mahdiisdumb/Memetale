.localvar 0 arguments

:[0]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.shot
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.i self.playdo
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 128
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.myloop
push.v other.id
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1
pop.v.i self.shot
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy

:[7]
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[8]
push.v global.ratings
pushi.e 15
add.i.v
pop.v.v global.ratings

:[end]