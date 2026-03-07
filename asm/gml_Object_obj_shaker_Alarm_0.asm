.localvar 0 arguments

:[0]
push.v self.hshake
pushi.e 0
cmp.i.v NEQ
bf [6]

:[1]
push.v self.hshake
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
push.v self.myview
conv.v.i
dup.i 1
push.v [array]self.view_xview
push.v self.hshake
add.v.v
pop.i.v [array]self.view_xview
push.v self.hshake
pushi.e 1
add.i.v
pop.v.v self.hshake

:[3]
push.v self.hshake
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e -1
push.v self.myview
conv.v.i
dup.i 1
push.v [array]self.view_xview
push.v self.hshake
add.v.v
pop.i.v [array]self.view_xview

:[5]
push.v self.hshake
neg.v
pop.v.v self.hshake

:[6]
push.v self.vshake
pushi.e 0
cmp.i.v NEQ
bf [12]

:[7]
push.v self.vshake
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e -1
push.v self.myview
conv.v.i
dup.i 1
push.v [array]self.view_yview
push.v self.vshake
add.v.v
pop.i.v [array]self.view_yview

:[9]
push.v self.vshake
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
pushi.e -1
push.v self.myview
conv.v.i
dup.i 1
push.v [array]self.view_yview
push.v self.vshake
add.v.v
pop.i.v [array]self.view_yview
push.v self.vshake
pushi.e 1
add.i.v
pop.v.v self.vshake

:[11]
push.v self.vshake
neg.v
pop.v.v self.vshake

:[12]
push.v self.shakespeed
pushi.e -1
push.v self.myview
conv.v.i
pop.v.v [array]self.alarm
push.v self.hshake
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.vshake
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[end]