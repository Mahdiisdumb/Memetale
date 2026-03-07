.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [end]

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

:[end]