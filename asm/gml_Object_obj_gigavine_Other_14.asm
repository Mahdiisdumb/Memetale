.localvar 0 arguments

:[0]
push.v self.active
pop.v.v self.save_active
push.v self.visible
pop.v.v self.save_visible
push.v self.image_xscale
pop.v.v self.save_xscale
push.v self.image_blend
pop.v.v self.save_blend
push.v self.image_alpha
pop.v.v self.save_alpha
push.v self.con
pop.v.v self.save_con
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pop.v.v self.save_alarm
pushi.e 1
pop.v.i self.saved

:[end]