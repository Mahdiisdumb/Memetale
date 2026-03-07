.localvar 0 arguments

:[0]
pushglb.v global.gold
pushbltn.v self.argument0
cmp.v.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.afford
b [end]

:[2]
pushi.e 0
pop.v.i self.afford

:[end]