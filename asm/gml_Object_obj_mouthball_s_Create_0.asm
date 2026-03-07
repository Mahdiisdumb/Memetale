.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.nowsize
push.d 0.8
pop.v.d self.size
push.v self.x
pop.v.v self.xprev3
push.v self.y
pop.v.v self.yprev3
push.v self.x
pop.v.v self.xprev2
push.v self.y
pop.v.v self.yprev2
push.v self.xprev3
pop.v.v self.xprev4
push.v self.yprev3
pop.v.v self.yprev4
push.v self.id
pop.v.v self.parent
pushi.e 0
pop.v.i self.num
push.i 48278432
pop.v.i self.mb
pushi.e 0
pop.v.i self.dont
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]