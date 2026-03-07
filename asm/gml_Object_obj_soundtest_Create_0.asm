.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i audio_stop_all(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.test_number
pushi.e 0
pop.v.i self.played
pushi.e 0
pop.v.i self.active_l
pushi.e 0
pop.v.i self.active_r
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.songno
pushi.e 0
pop.v.i self.gaster
pushi.e 0
pop.v.i self.g_timer
pushi.e 0
pop.v.i self.seeya_timer

:[end]