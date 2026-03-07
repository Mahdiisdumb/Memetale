.localvar 0 arguments

:[0]
push.s "room_fire_lab2_96_0"@31599
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.xstring1
push.s "room_fire_lab2_96_1"@31601
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.xstring2
pushi.e 1
pop.v.i self.xno

:[end]