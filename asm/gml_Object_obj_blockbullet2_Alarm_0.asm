.localvar 0 arguments

:[0]
push.v self.site
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.truesite

:[2]
push.v self.site
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.truesite

:[4]
push.v self.site
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i self.truesite

:[6]
push.v self.site
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.truesite

:[8]
push.v self.truesite
pop.v.v self.image_index
push.v self.site
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v 264.x
pushi.e 300
sub.i.v
pop.v.v self.x
push.v 264.y
pop.v.v self.y

:[10]
push.v self.site
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.object0
conv.v.i
push.v [stacktop]self.x
pushi.e 300
add.i.v
pop.v.v self.x
push.v self.object0
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y

:[12]
push.v self.site
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v self.object0
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.object0
conv.v.i
push.v [stacktop]self.y
pushi.e 300
add.i.v
pop.v.v self.y

:[14]
push.v self.site
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
push.v self.object0
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.object0
conv.v.i
push.v [stacktop]self.y
pushi.e 300
sub.i.v
pop.v.v self.y

:[16]
pushi.e 8
push.v self.speedmod
mul.v.i
push.v self.object0
conv.v.i
push.v [stacktop]self.y
push.v self.object0
conv.v.i
push.v [stacktop]self.x
call.i move_towards_point(argc=3)
popz.v
pushi.e 1
pop.v.i self.active

:[end]