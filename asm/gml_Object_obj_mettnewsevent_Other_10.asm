.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.yy
pushi.e 1229
conv.i.v
push.v self.yy
pushi.e 20
add.i.v
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.part1
pushi.e 1887
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1229
conv.i.v
push.v self.yy
pushi.e 20
add.i.v
push.v self.xx
pushi.e 93
add.i.v
call.i instance_create(argc=3)
pop.v.v self.part2
pushi.e 1888
push.v self.part2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1229
conv.i.v
push.v self.yy
pushi.e 67
add.i.v
push.v self.xx
pushi.e 93
add.i.v
call.i instance_create(argc=3)
pop.v.v self.part3
pushi.e 1889
push.v self.part3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1229
conv.i.v
push.v self.yy
pushi.e 20
add.i.v
push.v self.xx
pushi.e 221
add.i.v
call.i instance_create(argc=3)
pop.v.v self.part4
pushi.e 1890
push.v self.part4
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1229
conv.i.v
push.v self.yy
pushi.e 180
add.i.v
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.floorpart
pushi.e 1892
push.v self.floorpart
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1229
conv.i.v
push.v self.yy
pushi.e 20
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.logo
pushi.e 1893
push.v self.logo
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1229
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.scaff
pushi.e 1885
push.v self.scaff
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 200
pop.v.i 1229.depth
push.v self.scaff
conv.v.i
dup.i 0
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.i.v [stacktop]self.depth
push.v self.floorpart
conv.v.i
dup.i 0
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth
push.v self.logo
conv.v.i
dup.i 0
push.v [stacktop]self.depth
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 1225
conv.i.v
push.v self.yy
pushi.e 160
add.i.v
pushi.e 33
sub.i.v
push.v self.xx
pushi.e 236
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e 170
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1229
conv.i.v
push.v self.yy
pushi.e 160
add.i.v
push.v self.xx
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.counter
pushi.e 1891
push.v self.counter
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 180
push.v self.counter
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1233
conv.i.v
push.v self.yy
pushi.e 200
add.i.v
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.ticker

:[end]