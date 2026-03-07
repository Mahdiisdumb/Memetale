.localvar 0 arguments
.localvar 1 i 4942

:[0]
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 12
cmp.i.v LTE
bf [end]

:[2]
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.i [array]self.xprev
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.i [array]self.yprev
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]