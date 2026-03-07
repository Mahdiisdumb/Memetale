.localvar 0 arguments
.localvar 1 control 862

:[0]
pushbltn.v self.argument0
pop.v.v local.control
pushloc.v local.control
pushi.e 0
cmp.i.v LT
bt [2]

:[1]
pushloc.v local.control
pushi.e 2
cmp.i.v GT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
ret.v

:[5]
pushi.e -5
pushloc.v local.control
conv.v.i
push.v [array]global.control_state
ret.v

:[end]