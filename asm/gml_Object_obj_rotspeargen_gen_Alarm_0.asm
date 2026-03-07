.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 278
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.t
push.v self.g
conv.v.i
pop.v.v [stacktop]self.type
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.t
b [4]

:[3]
pushi.e 0
pop.v.i self.t

:[4]
pushi.e 27
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.t
pushi.e 278
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.t
push.v self.g
conv.v.i
pop.v.v [stacktop]self.type
pushi.e 24
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]