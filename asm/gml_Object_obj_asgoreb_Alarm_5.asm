.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.talked
pushi.e 2
pop.v.i global.mnfight
pushi.e 0
pop.v.i self.ttttt
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.ttttt

:[2]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.ttttt

:[4]
push.v self.turns
pushi.e 12
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.ttttt

:[6]
push.v self.turns
pushi.e 16
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.ttttt

:[8]
push.v self.turns
pushi.e 20
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.ttttt

:[10]
push.v self.turns
pushi.e 23
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.ttttt

:[12]
push.v self.ttttt
pushi.e 0
cmp.i.v EQ
bf [end]

:[13]
pushi.e 30
pop.v.i global.border

:[end]