.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.p
call.i caster_free(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.won
pushi.e 2
cmp.i.v NEQ
bf [end]

:[4]
pushi.e 0
pop.v.i global.interact

:[end]