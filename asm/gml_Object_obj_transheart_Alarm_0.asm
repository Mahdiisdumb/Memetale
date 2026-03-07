.localvar 0 arguments

:[0]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.yy
pushi.e 0
pop.v.i self.mode
push.v self.xx
pushi.e 20
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 223
add.i.v
pop.v.v self.mychoicey
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v self.room
pushi.e 77
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.v self.xx
pushi.e 154
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 156
add.i.v
pop.v.v self.mychoicey

:[5]
pushbltn.v self.room
pushi.e 134
cmp.i.v EQ
bf [7]

:[6]
push.v self.xx
pushi.e 154
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 110
add.i.v
pop.v.v self.mychoicey

:[7]
push.v self.mychoicey
push.v self.mychoicex
call.i distance_to_point(argc=2)
pushi.e 17
conv.i.d
div.d.v
pop.v.v self.spdr
push.v self.spdr
push.v self.mychoicey
push.v self.mychoicex
call.i move_towards_point(argc=3)
popz.v
pushi.e -5
pushi.e 16
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
push.v self.xx
pushi.e 154
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 156
add.i.v
pop.v.v self.mychoicey
push.v self.mychoicey
push.v self.mychoicex
call.i distance_to_point(argc=2)
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.spdr
push.v self.spdr
push.v self.mychoicey
push.v self.mychoicex
call.i move_towards_point(argc=3)
popz.v

:[end]