.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 180
pop.v.i self.direction

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.direction

:[4]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 90
pop.v.i self.direction

:[6]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 270
pop.v.i self.direction

:[8]
pushi.e 4
pop.v.i self.speed
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 662
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.fb
pushi.e 1
push.v self.fb
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.dmg
push.v self.fb
conv.v.i
pop.v.v [stacktop]self.dmg
push.d -0.15
push.v self.fb
conv.v.i
pop.v.d [stacktop]self.friction

:[10]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 663
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.fb
push.v self.dmg
push.v self.fb
conv.v.i
pop.v.v [stacktop]self.dmg

:[12]
pushi.e 2
pop.v.i self.part

:[end]