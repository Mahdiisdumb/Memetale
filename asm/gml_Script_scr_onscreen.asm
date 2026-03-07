.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.onscreen
push.v self.x
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushbltn.v self.argument0
sub.v.v
cmp.v.v GT
bf [2]

:[1]
push.v self.x
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_wview
add.v.v
pushbltn.v self.argument0
add.v.v
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.y
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_hview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
add.v.v
pushbltn.v self.argument1
add.v.v
cmp.v.v LT
bf [6]

:[5]
push.v self.y
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushbltn.v self.argument1
sub.v.v
cmp.v.v GT
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 1
pop.v.i self.onscreen

:[end]