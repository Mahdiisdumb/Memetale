.localvar 0 arguments

:[0]
push.v self.nowtime
pop.v.v self.save_nowtime
push.v self.active
pop.v.v self.save_active
push.v self.visible
pop.v.v self.save_visible
push.v self.save_visible
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.saved

:[end]