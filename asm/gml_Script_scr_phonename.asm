.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.phone
pop.v.v self.itemid
push.s "phonename_"@3472
push.v self.itemid
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phonename
push.v self.itemid
pushi.e 210
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 465
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.s "phonename_210b"@3474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phonename

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]