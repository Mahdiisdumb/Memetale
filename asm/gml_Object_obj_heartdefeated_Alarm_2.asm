.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.gameoversong
call.i caster_loop(argc=3)
popz.v

:[2]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 1.25
conv.d.v
push.d 0.9
conv.d.v
push.v self.gameoversong
call.i caster_loop(argc=3)
popz.v

:[4]
pushi.e 181
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 80
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]