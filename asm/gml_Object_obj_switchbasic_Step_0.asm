.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_index

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.on
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_index

:[end]