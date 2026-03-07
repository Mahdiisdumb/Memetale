.localvar 0 arguments

:[0]
push.v self.gift
pop.v.v self.image_index
push.v self.gift
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.gift
pushi.e 7
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 9
pop.v.i self.depth

:[5]
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.visible

:[end]