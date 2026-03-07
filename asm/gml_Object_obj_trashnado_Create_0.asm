.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner1
pushi.e 120
pop.v.i self.siner2
pushi.e 240
pop.v.i self.siner3
pushi.e 0
pop.v.i self.siner4
pushi.e 120
pop.v.i self.siner5
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [7]

:[2]
pushi.e 1727
conv.i.v
pushi.e 1726
conv.i.v
call.i choose(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.tspr1
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.trash1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash1
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tspr1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash1
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash1
conv.v.i
pushenv [5]

:[4]
call.i scr_depth(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[9]
pushi.e 1727
conv.i.v
pushi.e 1726
conv.i.v
call.i choose(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.tspr2
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.trash2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash2
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tspr2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash2
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash2
conv.v.i
pushenv [12]

:[11]
call.i scr_depth(argc=0)
popz.v

:[12]
popenv [11]

:[13]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [21]

:[16]
pushi.e 1375
conv.i.v
pushi.e 1726
conv.i.v
pushi.e 1727
conv.i.v
pushi.e 1726
conv.i.v
call.i choose(argc=4)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.tspr3
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.trash3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash3
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[17]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tspr3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash3
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash3
conv.v.i
pushenv [19]

:[18]
call.i scr_depth(argc=0)
popz.v

:[19]
popenv [18]

:[20]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[21]
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [28]

:[23]
pushi.e 1726
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.tspr4
pushi.e 1706
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.tspr4
pushi.e 1373
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.tspr4
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.trash4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash4
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[24]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tspr4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash4
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash4
conv.v.i
pushenv [26]

:[25]
call.i scr_depth(argc=0)
popz.v

:[26]
popenv [25]

:[27]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[28]
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [40]

:[30]
pushi.e -5
pushi.e 497
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [32]

:[31]
pushi.e 1726
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.tspr5
pushi.e 1706
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.tspr5
pushi.e 1728
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.tspr5
b [33]

:[32]
pushi.e 1726
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.tspr5
pushi.e 1728
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.tspr5
pushi.e 1609
conv.i.v
pushi.e 1706
conv.i.v
pushi.e 1726
conv.i.v
pushi.e 1706
conv.i.v
call.i choose(argc=4)
pushi.e -1
pushi.e 1
pop.v.v [array]self.tspr5

:[33]
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.trash5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash5
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[34]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tspr5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash5
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash5
conv.v.i
pushenv [36]

:[35]
push.d 0.2
pop.v.d self.image_speed

:[36]
popenv [35]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash1
conv.v.i
pushenv [38]

:[37]
call.i scr_depth(argc=0)
popz.v

:[38]
popenv [37]

:[39]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [29]

:[40]
pushi.e 1
pop.v.i 1365.visible
pushi.e 1365
pushenv [43]

:[41]
push.v self.depth
pushi.e 100
cmp.i.v LT
bf [43]

:[42]
pushi.e 100
pop.v.i self.depth

:[43]
popenv [41]

:[end]