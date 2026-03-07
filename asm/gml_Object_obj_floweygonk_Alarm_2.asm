.localvar 0 arguments

:[0]
push.v self.shk_x
push.v self.gl
add.v.v
pop.v.v self.x
push.v self.gl
neg.v
pop.v.v self.gl
push.v self.gl
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.gl
pushi.e 3
add.i.v
pop.v.v self.gl

:[2]
push.v self.gl
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.gl
pushi.e 3
sub.i.v
pop.v.v self.gl

:[4]
push.v self.gl
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [end]

:[5]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]