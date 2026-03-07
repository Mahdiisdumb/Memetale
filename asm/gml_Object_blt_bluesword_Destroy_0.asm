.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
push.v self.hurted
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 248
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 0
pop.v.i 248.excited

:[end]