.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 107
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 27
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
conv.i.v
push.v self.i
call.i scr_itemshift(argc=2)
popz.v

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
pushi.e 0
pushi.e -5
pushi.e 107
pop.v.i [array]global.flag

:[7]
push.v self.dogsong
call.i caster_free(argc=1)
popz.v

:[end]