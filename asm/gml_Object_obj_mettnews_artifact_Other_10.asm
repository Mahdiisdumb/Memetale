.localvar 0 arguments

:[0]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1614
pop.v.i self.sprite_index
pushi.e 1613
pop.v.i self.bombsprite

:[2]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1867
pop.v.i self.sprite_index
pushi.e 1868
pop.v.i self.bombsprite

:[4]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1861
pop.v.i self.sprite_index
pushi.e 1862
pop.v.i self.bombsprite

:[6]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1869
pop.v.i self.sprite_index
pushi.e 1870
pop.v.i self.bombsprite

:[8]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1865
pop.v.i self.sprite_index
pushi.e 1866
pop.v.i self.bombsprite

:[10]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [end]

:[11]
pushi.e 1863
pop.v.i self.sprite_index
pushi.e 1864
pop.v.i self.bombsprite

:[end]