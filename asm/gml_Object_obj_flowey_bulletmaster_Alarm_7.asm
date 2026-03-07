.localvar 0 arguments

:[0]
pushi.e 1591
pushenv [3]

:[1]
push.v self.megadamage
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
push.v self.megadamage
pushi.e 1
add.i.v
pop.v.v self.megadamage

:[3]
popenv [1]
pushi.e 900
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[end]