.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.i

:[1]
push.v self.i
pushbltn.v self.argument0
pushi.e 11
add.i.v
cmp.v.v LT
bf [3]

:[2]
push.s " "@18
pushi.e -5
push.v self.i
pushbltn.v self.argument0
sub.v.v
conv.v.i
pop.v.s [array]global.itemname
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 11
cmp.i.v LT
bf [end]

:[5]
pushi.e -5
pushbltn.v self.argument0
push.v self.i
add.v.v
conv.v.i
push.v [array]global.flag
pop.v.v self.itemid
call.i scr_itemnamelist(argc=0)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]