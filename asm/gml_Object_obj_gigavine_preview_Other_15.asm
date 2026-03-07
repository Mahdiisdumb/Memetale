.localvar 0 arguments

:[0]
push.v self.saved
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
push.v self.save_nowtime
pop.v.v self.nowtime
push.v self.save_active
pop.v.v self.active
push.v self.save_visible
pop.v.v self.visible

:[end]