.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 99
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.failure
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 26
pop.v.i global.attacktype
pushi.e 20
pop.v.i global.testhp
pushi.e 0
pop.v.i global.testinv
pushi.e 6
pop.v.i global.healno
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.specialdam
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.specialdam
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.specialdam

:[end]