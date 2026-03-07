.localvar 0 arguments

:[0]
pushglb.v global.osflavor
pushi.e 3
cmp.i.v GTE
bf [end]

:[1]
call.i os_is_paused(argc=0)
conv.v.b
bf [4]

:[2]
push.v self.paused
conv.v.b
not.b
bf [4]

:[3]
pushglb.v global.disable_os_pause
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.paused
call.i audio_pause_all(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i instance_deactivate_all(argc=1)
popz.v
b [end]

:[7]
call.i os_is_paused(argc=0)
conv.v.b
not.b
bf [9]

:[8]
push.v self.paused
conv.v.b
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
call.i instance_activate_all(argc=0)
popz.v
call.i audio_resume_all(argc=0)
popz.v
pushi.e 0
pop.v.i self.paused

:[end]