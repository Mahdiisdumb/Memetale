.localvar 0 arguments
.localvar 1 i 7255

:[0]
pushi.e 0
pop.v.i self.glowtotal
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 1103
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [5]

:[2]
pushloc.v local.i
pushi.e 1103
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.q
push.v self.q
conv.v.i
push.v [stacktop]self.glow
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.glowtotal
pushi.e 1
add.i.v
pop.v.v self.glowtotal

:[4]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[5]
pushi.e 1
pop.v.i local.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [10]

:[6]
push.v self.glowtotal
pushloc.v local.i
cmp.v.v GTE
bf [8]

:[7]
push.i 1000000
pushloc.v local.i
add.v.i
call.i tile_layer_show(argc=1)
popz.v
b [9]

:[8]
push.i 1000000
pushloc.v local.i
add.v.i
call.i tile_layer_hide(argc=1)
popz.v

:[9]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [6]

:[10]
popz.i
push.v self.glowtotal
pushi.e 4
cmp.i.v GTE
bf [12]

:[11]
pushi.e -5
pushi.e 270
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 1
pushi.e -5
pushi.e 270
pop.v.i [array]global.flag

:[end]