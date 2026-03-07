.localvar 0 arguments

:[0]
push.v self.col
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
push.v self.bbox_bottom
push.v 1576.bbox_top
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i scr_depth(argc=0)
popz.v
b [6]

:[5]
pushi.e 1000
pop.v.i self.depth

:[6]
push.v self.col
pushi.e 1
sub.i.v
pop.v.v self.col
push.v self.col
pushi.e 0
cmp.i.v LT
bf [end]

:[7]
pushi.e 0
pop.v.i self.col

:[end]