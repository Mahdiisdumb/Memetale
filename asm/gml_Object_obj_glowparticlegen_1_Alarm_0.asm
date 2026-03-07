.localvar 0 arguments

:[0]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 100
sub.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
add.v.v
pushi.e 100
add.i.v
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 100
sub.i.v
cmp.v.v GT
bf [6]

:[5]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
add.v.v
pushi.e 100
add.i.v
cmp.v.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 115
conv.i.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v

:[9]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]