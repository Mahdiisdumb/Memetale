.localvar 0 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
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
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 776
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 771
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e 771
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
pushglb.v global.faceemotion
pop.v.v self.image_index

:[end]