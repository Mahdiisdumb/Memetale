.localvar 0 arguments

:[0]
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 785
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[2]
pushi.e 785
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.choicer
push.v self.id
push.v self.choicer
conv.v.i
pop.v.v [stacktop]self.creator
push.v self.myfont
pushi.e 11
cmp.i.v EQ
bf [4]

:[3]
push.v self.choicer
conv.v.i
dup.i 0
push.v [stacktop]self.x0
pushi.e 11
add.i.v
pop.i.v [stacktop]self.x0
push.v self.choicer
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 11
add.i.v
pop.i.v [stacktop]self.x

:[4]
pushi.e 5
pop.v.i self.halt

:[end]