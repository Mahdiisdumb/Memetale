.localvar 0 arguments

:[0]
pushi.e 8
pop.v.i self.itemfree
pushi.e 0
pop.v.i self.itemhold
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
push.v self.itemfree
pushi.e 1
sub.i.v
pop.v.v self.itemfree
push.v self.itemhold
pushi.e 1
add.i.v
pop.v.v self.itemhold

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]