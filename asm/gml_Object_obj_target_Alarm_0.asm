.localvar 0 arguments

:[0]
pushglb.v global.weapon
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 735
conv.i.v
push.v self.y
push.v self.x
pushi.e 16
sub.i.v
call.i instance_create(argc=3)
popz.v

:[2]
pushglb.v global.weapon
pushi.e 13
cmp.i.v EQ
bt [6]

:[3]
pushglb.v global.weapon
pushi.e 45
cmp.i.v EQ
bt [6]

:[4]
pushglb.v global.weapon
pushi.e 51
cmp.i.v EQ
bt [6]

:[5]
pushglb.v global.weapon
pushi.e 52
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [12]

:[8]
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
push.v self.r
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 735
conv.i.v
push.v self.y
push.v self.x
pushi.e 16
sub.i.v
call.i instance_create(argc=3)
popz.v

:[10]
push.v self.r
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 735
conv.i.v
push.v self.y
push.v self.x
pushi.e 570
add.i.v
call.i instance_create(argc=3)
popz.v

:[12]
pushglb.v global.weapon
pushi.e 14
cmp.i.v EQ
bt [14]

:[13]
pushglb.v global.weapon
pushi.e 47
cmp.i.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [end]

:[16]
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
push.v self.r
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 737
conv.i.v
push.v self.y
push.v self.x
pushi.e 16
sub.i.v
call.i instance_create(argc=3)
popz.v

:[18]
push.v self.r
pushi.e 1
cmp.i.v EQ
bf [end]

:[19]
pushi.e 737
conv.i.v
push.v self.y
push.v self.x
pushi.e 570
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]