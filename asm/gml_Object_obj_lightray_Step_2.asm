.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.yy
push.v self.yy
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.yy

:[2]
push.v self.yy
pushbltn.v self.room_height
pushi.e 240
sub.i.v
cmp.v.v GT
bf [4]

:[3]
pushbltn.v self.room_height
pushi.e 240
sub.i.v
pop.v.v self.yy

:[4]
push.v self.yy
push.v self.minusy
sub.v.v
pop.v.v self.y

:[end]