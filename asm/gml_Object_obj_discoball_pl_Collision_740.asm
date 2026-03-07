.localvar 0 arguments

:[0]
push.v other.id
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.type
b [5]

:[4]
pushi.e 0
pop.v.i self.type

:[5]
pushi.e 3
pop.v.i self.swaptimer
pushi.e 554
pop.v.i self.sprite_index
push.v self.soundtimer
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.soundtimer

:[7]
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[8]
push.v global.ratings
pushi.e 5
add.i.v
pop.v.v global.ratings

:[end]