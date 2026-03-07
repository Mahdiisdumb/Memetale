.localvar 0 arguments

:[0]
push.v self.inactive
pushi.e 0
cmp.i.v EQ
bf [14]

:[1]
push.v self.x
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
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[5]
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [9]

:[6]
push.v self.iii
conv.v.i
pushenv [8]

:[7]
pushi.e 2
pop.v.i self.dmg

:[8]
popenv [7]

:[9]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [13]

:[10]
push.v self.iii
conv.v.i
pushenv [12]

:[11]
pushi.e 1
pop.v.i self.dmg

:[12]
popenv [11]

:[13]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
b [15]

:[14]
pushi.e 70
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[15]
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [17]

:[16]
pushi.e 2
pop.v.i self.dmg

:[17]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [end]

:[18]
pushi.e 1
pop.v.i self.dmg

:[end]