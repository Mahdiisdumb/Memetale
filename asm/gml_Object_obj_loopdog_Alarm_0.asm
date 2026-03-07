.localvar 0 arguments

:[0]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 690
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 8
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.add
push.d 2.2
push.v self.add
add.v.d
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.xadd
push.d 1.2
push.v self.add
pushi.e 1
mul.i.v
add.v.d
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e 999
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.specialtimer
pushi.e 121
pop.v.i self.sprite_index
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 75
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 120
pop.v.i self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 645
conv.i.v
push.v self.y
pushi.e 25
add.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v

:[end]