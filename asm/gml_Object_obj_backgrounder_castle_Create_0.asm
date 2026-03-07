.localvar 0 arguments

:[0]
push.d 0.08
pop.v.d self.scrollspeed
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushbltn.v self.room_width
pushi.e 6
conv.i.d
div.d.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 6
mul.i.v
pop.v.v self.rr
pushi.e 123
conv.i.v
pushi.e 2
conv.i.v
push.v self.rr
call.i instance_create(argc=3)
pop.v.v self.star
push.d 0.9
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.star
conv.v.i
pop.v.v [stacktop]self.size
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 20
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
pushbltn.v self.room_width
pushi.e 6
conv.i.d
div.d.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 6
mul.i.v
pop.v.v self.rr
pushi.e 123
conv.i.v
pushi.e 2
conv.i.v
push.v self.rr
call.i instance_create(argc=3)
pop.v.v self.star
push.d 0.5
push.d 0.4
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.star
conv.v.i
pop.v.v [stacktop]self.size
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[4]
popz.i
pushi.e 40
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
pushbltn.v self.room_width
pushi.e 6
conv.i.d
div.d.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 6
mul.i.v
pop.v.v self.rr
pushi.e 123
conv.i.v
pushi.e 2
conv.i.v
push.v self.rr
call.i instance_create(argc=3)
pop.v.v self.star
push.d 0.4
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.star
conv.v.i
pop.v.v [stacktop]self.size
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
pushi.e 200
pushi.e -1
pushi.e 4
pop.v.i [array]self.background_x
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
pushi.e 1576
pushenv [10]

:[8]
push.v self.rsprite
pushi.e 1133
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1116
pop.v.i self.rsprite
pushi.e 1117
pop.v.i self.lsprite
pushi.e 1119
pop.v.i self.dsprite
pushi.e 1118
pop.v.i self.usprite

:[10]
popenv [8]

:[end]