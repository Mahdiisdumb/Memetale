.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1214
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 15
add.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [4]

:[1]
push.v self.splash
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.splash

:[3]
b [end]

:[4]
pushi.e 0
pop.v.i self.splash

:[end]