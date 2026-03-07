.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.madepud
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1350
conv.i.v
pushi.e 63
conv.i.v
pushi.e 170
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pud
pushi.e 1968
conv.i.v
pushi.e 60
conv.i.v
pushi.e 170
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.pudspr
push.i 900000
push.v self.pudspr
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
pop.v.i self.madepud

:[3]
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[4]
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 7
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
push.v self.pudspr
conv.v.i
pop.v.i [stacktop]self.image_index

:[6]
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 15
cmp.i.v GT
bf [8]

:[7]
pushi.e 2
push.v self.pudspr
conv.v.i
pop.v.i [stacktop]self.image_index

:[8]
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 15
cmp.i.v GT
bf [10]

:[9]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 3
push.v self.pudspr
conv.v.i
pop.v.i [stacktop]self.image_index

:[end]