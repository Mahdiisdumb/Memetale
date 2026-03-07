.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 1747
pushi.e -1
pushi.e 0
pop.v.i [array]self.m
pushi.e 1751
pushi.e -1
pushi.e 1
pop.v.i [array]self.m
pushi.e 1752
pushi.e -1
pushi.e 2
pop.v.i [array]self.m
pushi.e 1756
pushi.e -1
pushi.e 3
pop.v.i [array]self.m
pushi.e 1753
pushi.e -1
pushi.e 4
pop.v.i [array]self.m
pushi.e 1754
pushi.e -1
pushi.e 5
pop.v.i [array]self.m
pushi.e 1748
pushi.e -1
pushi.e 6
pop.v.i [array]self.m
pushi.e 1749
pushi.e -1
pushi.e 7
pop.v.i [array]self.m
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 7
cmp.i.v LT
bf [2]

:[1]
pushi.e -1
pushi.e -5
pushi.e 20
push.v [array]global.flag
conv.v.i
push.v [array]self.m
pop.v.v self.sprite_index

:[2]
pushi.e 0
pop.v.i self.d

:[end]