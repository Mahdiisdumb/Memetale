.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.credno
call.i scr_loadcredits(argc=0)
pop.v.v self.credamt
pushi.e 10
pop.v.i self.cy
pushi.e 0
pop.v.i self.rounded
pushi.e 0
pop.v.i self.memory
pushi.e 0
pop.v.i self.st_t
pushi.e 500
pop.v.i self.st_y
pushi.e 0
pop.v.i self.st_f
pushi.e 0
pop.v.i self.memswitch
pushi.e 0
pop.v.i self.mytimer
pushi.e 0
pop.v.i self.hitno
push.s ""@36
pushi.e -1
pushi.e 0
pop.v.s [array]self.hitname
pushi.e 0
pop.v.i self.songed
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.drawbar
pushi.e 1
pop.v.i global.inbattle
pushi.e 0
pop.v.i self.ting
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.curf
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.curf
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "music/yourbestfriend_3.ogg"@2737
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.horror
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
push.v self.horror
call.i caster_loop(argc=3)
popz.v
pushi.e 570
conv.i.v
pushi.e 16
conv.i.v
pushi.e 272
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asriel
pushi.e 1
pop.v.i self.a_con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [3]

:[2]
pushi.e 7
pop.v.i self.a_con
push.v self.id
pop.v.v self.a2

:[3]
pushi.e 0
pop.v.i self.do_room_goto

:[end]