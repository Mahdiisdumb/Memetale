.localvar 0 arguments

:[0]
pushi.e 4
pop.v.i global.interact
pushi.e 1
pop.v.i global.phasing
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 51
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[2]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.sd_noise
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 135
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 980
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.sd_noise

:[5]
popenv [4]

:[end]