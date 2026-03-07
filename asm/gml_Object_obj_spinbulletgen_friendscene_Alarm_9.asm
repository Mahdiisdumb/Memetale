.localvar 0 arguments

:[0]
push.v self.spec
pushi.e 3
cmp.i.v EQ
bt [2]

:[1]
push.v self.spec
pushi.e 5
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [7]

:[4]
pushi.e 1670
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
pushi.e 50
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bone
pushi.e 2385
push.v self.bone
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.spec
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2387
push.v self.bone
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.spec
pushi.e 4
cmp.i.v EQ
bt [9]

:[8]
push.v self.spec
pushi.e 6
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
pushi.e 1670
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.spear
pushi.e 2386
push.v self.spear
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.spec
pushi.e 6
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2388
push.v self.spear
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]