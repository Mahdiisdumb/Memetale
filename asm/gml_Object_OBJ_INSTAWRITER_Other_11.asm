.localvar 0 arguments

:[0]
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 785
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

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

:[3]
b [end]

:[4]
pushi.e 5
pop.v.i self.halt

:[end]