.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.flasher
push.d 0.5
conv.d.v
push.i 65535
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
pushi.e 1
pop.v.i self.crit

:[end]