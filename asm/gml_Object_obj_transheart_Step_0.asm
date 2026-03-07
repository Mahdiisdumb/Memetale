.localvar 0 arguments

:[0]
push.v self.x
push.v self.mychoicex
sub.v.v
call.i abs(argc=1)
push.v self.speed
cmp.v.v LT
bf [2]

:[1]
push.v self.y
push.v self.mychoicey
sub.v.v
call.i abs(argc=1)
push.v self.speed
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.mychoicex
pop.v.v self.x
push.v self.mychoicey
pop.v.v self.y
pushi.e 0
pop.v.i self.speed

:[end]