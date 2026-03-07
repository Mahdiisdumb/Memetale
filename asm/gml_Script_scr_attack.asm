.localvar 0 arguments

:[0]
pushglb.v global.weapon
pushi.e 3
cmp.i.v EQ
bt [5]

:[1]
pushglb.v global.weapon
pushi.e 13
cmp.i.v EQ
bt [5]

:[2]
pushglb.v global.weapon
pushi.e 14
cmp.i.v EQ
bt [5]

:[3]
pushglb.v global.weapon
pushi.e 51
cmp.i.v EQ
bt [5]

:[4]
pushglb.v global.weapon
pushi.e 52
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
pushi.e 739
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 6
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 6
add.i.v
call.i instance_create(argc=3)
popz.v

:[8]
pushglb.v global.weapon
pushi.e 25
cmp.i.v EQ
bt [12]

:[9]
pushglb.v global.weapon
pushi.e 49
cmp.i.v EQ
bt [12]

:[10]
pushglb.v global.weapon
pushi.e 47
cmp.i.v EQ
bt [12]

:[11]
pushglb.v global.weapon
pushi.e 45
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [end]

:[14]
pushi.e 726
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 6
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 6
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]