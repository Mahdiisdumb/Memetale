.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.conversation
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y

:[end]