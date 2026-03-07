.localvar 0 arguments

:[0]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 218
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v 218.ditch
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.pop
pushi.e 1
sub.i.v
pop.v.v self.pop

:[3]
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [10]

:[4]
pushi.e 3
pop.v.i self.n
pushglb.v global.hardmode
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 647
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.blt
pushi.e 647
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.blt
push.v self.n
pushi.e 2
add.i.v
pop.v.v self.n
b [7]

:[6]
pushi.e 647
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.blt
pushi.e 647
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.blt
pushi.e 647
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.blt

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
push.v self.n
cmp.v.v LT
bf [10]

:[9]
push.v self.dmg
pushi.e 1
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [14]

:[11]
pushi.e 647
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.blt
pushi.e 647
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.x
pushi.e 6
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.blt
pushi.e 647
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.blt
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[13]
push.v self.dmg
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
pushi.e 20
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[end]