.localvar 0 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 777
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 778
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 778
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e 776
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
pushi.e 772
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[13]
pushi.e 772
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[16]
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[17]
pushi.e 766
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[20]
pushi.e 768
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[21]
pushi.e 768
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]

:[24]
pushi.e 765
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[25]
pushi.e 765
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]

:[28]
push.d 0.25
pop.v.d self.image_speed
pushi.e 2149
pushi.e -1
pushi.e 0
pop.v.i [array]self.u
pushi.e 2152
pushi.e -1
pushi.e 1
pop.v.i [array]self.u
pushi.e 2153
pushi.e -1
pushi.e 2
pop.v.i [array]self.u
pushi.e 2154
pushi.e -1
pushi.e 3
pop.v.i [array]self.u
pushi.e 2155
pushi.e -1
pushi.e 4
pop.v.i [array]self.u
pushi.e 2156
pushi.e -1
pushi.e 5
pop.v.i [array]self.u
pushi.e 2157
pushi.e -1
pushi.e 6
pop.v.i [array]self.u
pushi.e 2158
pushi.e -1
pushi.e 7
pop.v.i [array]self.u
pushi.e 2159
pushi.e -1
pushi.e 8
pop.v.i [array]self.u
pushi.e 2160
pushi.e -1
pushi.e 9
pop.v.i [array]self.u
pushi.e 2161
pushi.e -1
pushi.e 10
pop.v.i [array]self.u
pushi.e 2162
pushi.e -1
pushi.e 11
pop.v.i [array]self.u
pushi.e 2163
pushi.e -1
pushi.e 12
pop.v.i [array]self.u
pushi.e 2164
pushi.e -1
pushi.e 13
pop.v.i [array]self.u
pushi.e 2165
pushi.e -1
pushi.e 14
pop.v.i [array]self.u
pushi.e 2166
pushi.e -1
pushi.e 15
pop.v.i [array]self.u
pushi.e 2167
pushi.e -1
pushi.e 16
pop.v.i [array]self.u
pushi.e 2168
pushi.e -1
pushi.e 17
pop.v.i [array]self.u
pushi.e 2169
pushi.e -1
pushi.e 18
pop.v.i [array]self.u
pushi.e 2170
pushi.e -1
pushi.e 19
pop.v.i [array]self.u
pushi.e 2171
pushi.e -1
pushi.e 20
pop.v.i [array]self.u
pushi.e 2172
pushi.e -1
pushi.e 21
pop.v.i [array]self.u
pushi.e 2173
pushi.e -1
pushi.e 22
pop.v.i [array]self.u
pushi.e 2174
pushi.e -1
pushi.e 23
pop.v.i [array]self.u
pushi.e 2175
pushi.e -1
pushi.e 24
pop.v.i [array]self.u
pushi.e 2176
pushi.e -1
pushi.e 25
pop.v.i [array]self.u
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e -1
pushglb.v global.faceemotion
pushi.e 10
add.i.v
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index

:[30]
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
pushi.e -1
pushglb.v global.faceemotion
pushi.e 15
add.i.v
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index

:[32]
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [end]

:[33]
pushglb.v global.faceemotion
pop.v.v self.image_index
pushi.e 2148
pop.v.i self.sprite_index

:[end]