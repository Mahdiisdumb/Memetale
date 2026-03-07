.localvar 0 arguments

:[0]
push.v self.jeffrey
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1363
pop.v.i self.sprite_index
push.v self.object_index
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 55
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.al
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.jeffrey
pushi.e 2248
push.v self.al
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[end]