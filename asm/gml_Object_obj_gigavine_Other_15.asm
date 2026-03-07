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
push.v self.save_active
pop.v.v self.active
push.v self.save_visible
pop.v.v self.visible
push.v self.save_xscale
pop.v.v self.image_xscale
push.v self.save_blend
pop.v.v self.image_blend
push.v self.save_alpha
pop.v.v self.image_alpha
push.v self.save_con
pop.v.v self.con
push.v self.save_alarm
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[end]