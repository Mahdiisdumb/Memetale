.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.conversation
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y

:[end]