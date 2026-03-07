.localvar 0 arguments

:[0]
pushi.e 1418
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1418.level
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
push.v 1418.level
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
pushi.e 1576
pushenv [7]

:[6]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y
pushi.e 0
pop.v.i self.moving

:[7]
popenv [6]

:[end]