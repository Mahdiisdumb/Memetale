.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[1]
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1155
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 50
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 70
sub.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
pushi.e 360
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v

:[3]
pushbltn.v self.room
pushi.e 107
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1155
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 120
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
popz.v

:[5]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[6]
popz.i
pushbltn.v self.room
pushi.e 109
cmp.i.v EQ
bf [end]

:[7]
pushi.e 1155
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 50
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 90
sub.i.v
pushi.e 340
conv.i.v
call.i random(argc=1)
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.dont
pushi.e 1155
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 50
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 130
sub.i.v
pushi.e 180
conv.i.v
call.i random(argc=1)
pushi.e 340
add.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.dont

:[end]