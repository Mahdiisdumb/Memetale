.localvar 0 arguments
.localvar 1 control 868

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
exit.i

:[5]
pushi.e 0
pushi.e -5
pushloc.v local.control
conv.v.i
pop.v.i [array]global.control_pressed

:[end]