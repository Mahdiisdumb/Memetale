.localvar 0 arguments

:[0]
push.v self.inactive
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
push.v self.x1
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 613
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 22
add.i.v
call.i instance_create(argc=3)
pop.v.v self.iii
b [4]

:[3]
pushi.e 615
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 22
add.i.v
call.i instance_create(argc=3)
pop.v.v self.iii

:[4]
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [8]

:[5]
push.v self.iii
conv.v.i
pushenv [7]

:[6]
pushi.e 2
pop.v.i self.dmg

:[7]
popenv [6]

:[8]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [12]

:[9]
push.v self.iii
conv.v.i
pushenv [11]

:[10]
pushi.e 1
pop.v.i self.dmg

:[11]
popenv [10]

:[12]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
b [14]

:[13]
pushi.e 100
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[14]
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [16]

:[15]
pushi.e 2
pop.v.i self.dmg

:[16]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [end]

:[17]
pushi.e 1
pop.v.i self.dmg

:[end]