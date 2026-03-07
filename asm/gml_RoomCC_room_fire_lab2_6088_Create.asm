.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale
push.s "room_fire_lab2_97_0"@31603
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.xstring1
pushi.e 0
pop.v.i self.xno
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.s "room_fire_lab2_97_1"@31605
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.xstring1
pushi.e 1759
conv.i.v
pushi.e 80
conv.i.v
pushi.e 400
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.met
push.i 300000
push.v self.met
conv.v.i
pop.v.i [stacktop]self.depth

:[end]