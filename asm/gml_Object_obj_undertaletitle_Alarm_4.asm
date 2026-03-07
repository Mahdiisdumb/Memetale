.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.con
pushi.e 3
cmp.i.v LT
bf [end]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ii
call.i caster_play(argc=3)
popz.v

:[end]