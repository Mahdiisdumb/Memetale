.localvar 0 arguments

:[0]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 667
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.m
push.v self.m
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[1]
push.v self.dmg
push.v self.m
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.m
conv.v.i
dup.i 0
push.v [stacktop]self.speed
push.d 1.1
div.d.v
pop.i.v [stacktop]self.speed
push.v self.m
conv.v.i
dup.i 0
push.v [stacktop]self.friction
push.d 1.25
div.d.v
pop.i.v [stacktop]self.friction

:[3]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
push.v self.m
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.m
conv.v.i
pop.v.i [stacktop]self.blue

:[5]
push.v self.direction
push.v self.m
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.green
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.cleaner
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
push.v self.m
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 3
push.v self.m
conv.v.i
pop.v.i [stacktop]self.blue
push.v self.m
conv.v.i
dup.i 0
push.v [stacktop]self.friction
pushi.e 3
div.i.v
pop.i.v [stacktop]self.friction
pushi.e 140
push.v self.m
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[10]
push.v self.green
pushi.e 1
sub.i.v
pop.v.v self.green
push.v self.green
pushi.e 0
cmp.i.v LT
bf [end]

:[11]
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [13]

:[12]
pushi.e 4
pop.v.i self.green

:[13]
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushi.e 9
pop.v.i self.green

:[end]