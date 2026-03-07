.localvar 0 arguments

:[0]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.myside
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.goldshift
push.v self.y
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 2
pop.v.i self.myside

:[5]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.myside
pushi.e 2
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.i self.goldshift
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.myside

:[10]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.myside
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.goldshift
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e 3
pop.v.i self.myside

:[15]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.myside
pushi.e 3
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [end]

:[19]
pushi.e 0
pop.v.i self.goldshift
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.myside

:[end]