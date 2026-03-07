.localvar 0 arguments

:[0]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 17
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1878
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 57
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1879
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 89
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1880
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 129
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1881
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 154
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1882
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 167
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1883
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1884
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
b [3]

:[2]
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 7
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1871
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 33
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1872
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 66
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1873
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 101
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1874
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 141
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1875
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 164
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1876
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1231
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 182
add.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 1877
push.v self.w
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]