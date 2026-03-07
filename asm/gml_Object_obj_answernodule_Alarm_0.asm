.localvar 0 arguments

:[0]
push.v self.qno
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 371
pop.v.i self.sprite_index

:[2]
push.v self.qno
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 372
pop.v.i self.sprite_index

:[4]
push.v self.qno
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 373
pop.v.i self.sprite_index

:[6]
push.v self.qno
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 374
pop.v.i self.sprite_index

:[8]
pushi.e 1
pop.v.i self.visible
push.v self.qno
pop.v.v self.ano
push.v 308.correct
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
pushi.e 5
pop.v.i self.ano

:[10]
pushi.e 1
pop.v.i 744.movement

:[end]