.localvar 0 arguments

:[0]
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[2]
push.v self.hits
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.hp

:[4]
push.v self.hits
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i global.hp

:[6]
push.v self.hits
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.d 0.9
pop.v.d global.hp

:[8]
push.v self.hits
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
push.d 0.5
pop.v.d global.hp

:[10]
push.v self.hits
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
push.d 0.1
pop.v.d global.hp

:[12]
push.v self.hits
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
push.d 0.01
pop.v.d global.hp

:[14]
push.v self.hits
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pushi.e -5
pushi.e 509
pop.v.i [array]global.flag

:[16]
push.v self.hits
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
pushi.e 2
pushi.e -5
pushi.e 509
pop.v.i [array]global.flag

:[18]
push.v self.hits
pushi.e 8
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3
pushi.e -5
pushi.e 509
pop.v.i [array]global.flag

:[20]
push.v self.hits
pushi.e 9
cmp.i.v EQ
bf [22]

:[21]
pushi.e 4
pushi.e -5
pushi.e 509
pop.v.i [array]global.flag

:[22]
push.v self.hits
pushi.e 1
add.i.v
pop.v.v self.hits
pushi.e 40
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]