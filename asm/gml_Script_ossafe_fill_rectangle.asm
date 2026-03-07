.localvar 0 arguments
.localvar 1 x1 838
.localvar 2 y1 839
.localvar 3 x2 840
.localvar 4 y2 841
.localvar 5 temp 842

:[0]
pushbltn.v self.argument0
pop.v.v local.x1
pushbltn.v self.argument1
pop.v.v local.y1
pushbltn.v self.argument2
pop.v.v local.x2
pushbltn.v self.argument3
pop.v.v local.y2
pushloc.v local.x1
pushloc.v local.x2
cmp.v.v GT
bf [2]

:[1]
pushloc.v local.x1
pop.v.v local.temp
pushloc.v local.x2
pop.v.v local.x1
pushloc.v local.temp
pop.v.v local.x2

:[2]
pushloc.v local.y1
pushloc.v local.y2
cmp.v.v GT
bf [4]

:[3]
pushloc.v local.y1
pop.v.v local.temp
pushloc.v local.y2
pop.v.v local.y1
pushloc.v local.temp
pop.v.v local.y2

:[4]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bt [6]

:[5]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.v local.x2
push.e 1
add.i.v
pop.v.v local.x2
push.v local.y2
push.e 1
add.i.v
pop.v.v local.y2

:[9]
pushi.e 0
conv.i.v
pushloc.v local.y2
pushloc.v local.x2
pushloc.v local.y1
pushloc.v local.x1
call.i draw_rectangle(argc=5)
popz.v

:[end]