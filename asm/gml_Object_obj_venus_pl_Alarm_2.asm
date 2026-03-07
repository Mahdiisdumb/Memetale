.localvar 0 arguments

:[0]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.side
push.v self.sider
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
pushi.e 1656
conv.i.v
pushi.e 200
conv.i.v
pushi.e 100
pushi.e 400
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.id
push.v self.ff
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.ff
conv.v.i
pushenv [4]

:[3]
pushi.e 11
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 115
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 65
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[4]
popenv [3]

:[5]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 1656
conv.i.v
pushi.e 200
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 680
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.id
push.v self.ff
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.ff
conv.v.i
pushenv [8]

:[7]
pushi.e 11
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 115
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 65
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[8]
popenv [7]

:[9]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [13]

:[10]
pushi.e 1656
conv.i.v
pushi.e 500
conv.i.v
pushi.e 100
pushi.e 700
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.id
push.v self.ff
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.ff
conv.v.i
pushenv [12]

:[11]
pushi.e 11
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 115
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 65
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[12]
popenv [11]

:[13]
push.v self.sider
pushi.e 1
cmp.i.v EQ
bf [26]

:[14]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [18]

:[15]
pushi.e 1656
conv.i.v
pushi.e 200
conv.i.v
pushi.e 100
pushi.e 400
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.id
push.v self.ff
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.ff
conv.v.i
pushenv [17]

:[16]
pushi.e 11
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 115
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[17]
popenv [16]

:[18]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [22]

:[19]
pushi.e 1656
conv.i.v
pushi.e 200
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.id
push.v self.ff
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.ff
conv.v.i
pushenv [21]

:[20]
pushi.e 11
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 115
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[21]
popenv [20]

:[22]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [26]

:[23]
pushi.e 1656
conv.i.v
pushi.e 500
conv.i.v
pushi.e -100
pushi.e 660
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.id
push.v self.ff
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.ff
conv.v.i
pushenv [25]

:[24]
pushi.e 11
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 115
add.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[25]
popenv [24]

:[26]
push.v self.amt
pushi.e 1
add.i.v
pop.v.v self.amt
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.amt
pushi.e 35
cmp.i.v GT
bf [end]

:[27]
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.wait
pushi.e 5
pop.v.i self.con

:[end]