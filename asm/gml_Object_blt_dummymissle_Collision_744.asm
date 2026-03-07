.localvar 0 arguments

:[0]
push.v self.normal
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.destroy
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.destroy
pushi.e 0
pop.v.i self.normal
call.i scr_damagestandard_x(argc=0)
popz.v

:[end]