.localvar 0 arguments

:[0]
push.v self.site
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.object0
conv.v.i
push.v [stacktop]self.x
pushi.e 300
sub.i.v
pop.v.v self.x
push.v self.object0
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y

:[2]
push.v self.site
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
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

:[4]
push.v self.site
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
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

:[6]
push.v self.site
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
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

:[8]
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

:[end]