.localvar 0 arguments

:[0]
push.v self.col
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 266
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.down

:[4]
popenv [3]
push.v self.idealdir
pop.v.v self.dir
pushi.e 5
pop.v.i self.flash
push.v self.sound0
call.i snd_play(argc=1)
popz.v

:[end]