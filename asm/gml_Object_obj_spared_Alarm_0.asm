.localvar 0 arguments

:[0]
push.v self.x
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.shudder
pushi.e 2
add.i.v
neg.v
pop.v.v self.shudder
b [3]

:[2]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[3]
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
exit.i

:[end]