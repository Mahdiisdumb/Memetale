.localvar 0 arguments

:[0]
push.v self.x
push.v self.thisx
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
push.v self.thisx
pop.v.v self.x

:[2]
push.v self.x
push.v self.thisx
cmp.v.v GT
bf [4]

:[3]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[4]
push.v self.x
push.v self.thisx
cmp.v.v LT
bf [end]

:[5]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[end]