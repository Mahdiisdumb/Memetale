.localvar 0 arguments

:[0]
push.v self.head
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v 1576.y
pushi.e 3
sub.i.v
cmp.v.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.head
push.v 1576.y
pushi.e 3
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.onhead
pushi.e 0
pop.v.i self.speed

:[5]
push.v self.onhead
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v 1576.x
pushi.e 7
add.i.v
pop.v.v self.x
push.v 1576.y
pushi.e 3
sub.i.v
pop.v.v self.y

:[end]