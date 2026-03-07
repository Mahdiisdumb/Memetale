.localvar 0 arguments

:[0]
push.v 1576.x
push.v 1576.xprevious
cmp.v.v NEQ
bt [2]

:[1]
push.v 1576.y
push.v 1576.yprevious
cmp.v.v NEQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.helltrigger
pushi.e 1
add.i.v
pop.v.v self.helltrigger

:[end]