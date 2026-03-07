.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_1"@32464
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_2"@32466
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 57
pop.v.i self.strtime1
pushi.e 57
pop.v.i self.strtime2
pushi.e 100
pop.v.i self.image_yscale
pushglb.v global.plot
pushi.e 166
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 120
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object

:[3]
pushi.e 0
pop.v.i self.mainmove
pushi.e 0
pop.v.i self.frantic
pushi.e 15
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.lastmove
push.v 1576.x
pop.v.v self.lastx
push.v 1576.y
pop.v.v self.lasty
pushi.e 0
pop.v.i self.unfrantic
pushi.e 0
pop.v.i self.face2
pushi.e 0
pop.v.i self.touch
pushi.e 0
pop.v.i self.already
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e -1
conv.i.v
push.s "O"@49977
conv.s.v
push.s "Mett"@50548
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.already
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i self.skip

:[end]