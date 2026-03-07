.localvar 0 arguments

:[0]
push.s "obj_sistertext_28"@31607
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.phrase
pushi.e 0
pop.v.i self.active
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.done
pushi.e 6
pop.v.i self.amt
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.amt
cmp.v.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.fade
pushi.e 220
conv.i.v
call.i random(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
add.v.v
pushi.e 50
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wherex
pushbltn.v self.room_height
pushi.e 20
sub.i.v
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wherey
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.type
pushi.e 1
pop.v.i self.hypefade

:[end]