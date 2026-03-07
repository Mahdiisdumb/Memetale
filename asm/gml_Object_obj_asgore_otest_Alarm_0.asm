.localvar 0 arguments

:[0]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.s
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1999
pop.v.i self.sprite_index

:[2]
push.v self.s
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2006
pop.v.i self.sprite_index

:[4]
push.v self.s
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2003
pop.v.i self.sprite_index

:[6]
push.v self.s
pushi.e 3
cmp.i.v GT
bf [8]

:[7]
pushi.e 0
pop.v.i self.s
pushi.e 2000
pop.v.i self.sprite_index

:[8]
pushi.e 60
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]