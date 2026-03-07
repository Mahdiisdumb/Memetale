.localvar 0 arguments

:[0]
pushglb.v global.hshake
pop.v.v self.hshake
pushglb.v global.vshake
pop.v.v self.vshake
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushglb.v global.shakespeed
pop.v.v self.shakespeed
pushbltn.v self.view_current
pop.v.v self.myview
pushi.e -1
push.v self.myview
conv.v.i
push.v [array]self.view_xview
pop.v.v self.myx
pushi.e -1
push.v self.myview
conv.v.i
push.v [array]self.view_yview
pop.v.v self.myy

:[end]