.localvar 0 arguments

:[0]
push.v self.nod
push.v self.no
cmp.v.v LT
bf [4]

:[1]
pushi.e -1
push.v self.nod
conv.v.i
push.v [array]self.dp
conv.v.i
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.con

:[3]
popenv [2]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.nod
pushi.e 1
add.i.v
pop.v.v self.nod
b [end]

:[4]
pushi.e 3
pop.v.i self.con

:[end]