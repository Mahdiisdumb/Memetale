.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v LT
bf [end]

:[1]
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.conversation

:[end]