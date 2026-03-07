.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.width
pushi.e 0
pop.v.i self.le
pushi.e 0
pop.v.i self.rc_cut
pushi.e 0
pop.v.i self.rc_le
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.x
sub.v.v
pop.v.v self.ww1
push.v self.ww1
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.ww1
pop.v.v self.width

:[2]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
sub.v.v
pop.v.v self.ww2
push.v self.ww2
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.ww2
neg.v
pop.v.v self.le
pushi.e 10
push.v self.ww2
add.v.i
pop.v.v self.width

:[4]
push.v self.width
pushi.e 10
cmp.i.v GT
bf [6]

:[5]
pushi.e 10
pop.v.i self.width

:[6]
push.v self.width
pushi.e 9
cmp.i.v LT
bf [9]

:[7]
pushi.e 8
push.v self.width
sub.v.i
pop.v.v self.rc_cut
push.v self.rc_cut
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
pop.v.i self.rc_cut

:[9]
push.v self.le
pushi.e 1
cmp.i.v GT
bf [end]

:[10]
push.v self.le
pushi.e 2
sub.i.v
pop.v.v self.rc_le
pushi.e 0
pop.v.i self.rc_cut
push.v self.rc_le
pushi.e 8
cmp.i.v GT
bf [end]

:[11]
pushi.e 0
pop.v.i self.rc_le

:[end]