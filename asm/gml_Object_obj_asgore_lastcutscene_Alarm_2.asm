.localvar 0 arguments

:[0]
push.v self.xstart
push.v self.shudder
add.v.v
pop.v.v self.asgorex
push.v self.shudder
neg.v
pop.v.v self.shudder
push.v self.shudder
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.shudder
pushi.e 2
sub.i.v
pop.v.v self.shudder

:[2]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.shudder
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [end]

:[3]
pushi.e 0
pop.v.i self.shudder
push.v self.hearts
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 30
pop.v.i self.con
b [6]

:[5]
pushi.e 58
pop.v.i self.con

:[6]
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]