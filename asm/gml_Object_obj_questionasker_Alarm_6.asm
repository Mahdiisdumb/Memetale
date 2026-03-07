.localvar 0 arguments

:[0]
push.s "obj_questionasker_119"@21887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.correct
push.v self.answer
cmp.v.v NEQ
bf [17]

:[1]
pushi.e 1
pop.v.i 298.right
pushi.e 297
conv.i.v
push.v 302.y
pushi.e 60
sub.i.v
push.v 302.x
pushi.e 94
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 24
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 99
pop.v.i 744.movement
pushi.e 40
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_questionasker_130"@21889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.q
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_questionasker_132"@21891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.q
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_questionasker_134"@21893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.q
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_questionasker_136"@21895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.q
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_questionasker_138"@21897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.q
pushi.e 6
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_questionasker_140"@21899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_questionasker_142"@21901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.q
pushi.e 8
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_questionasker_144"@21903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.correct
push.v self.answer
cmp.v.v EQ
bf [34]

:[18]
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_questionasker_151"@21905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.q
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_questionasker_153"@21907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.q
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_questionasker_155"@21909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.q
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_questionasker_157"@21911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.q
pushi.e 5
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_questionasker_159"@21913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.q
pushi.e 6
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_questionasker_161"@21915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_questionasker_163"@21917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.q
pushi.e 8
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_questionasker_165"@21919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.q
pushi.e 6
cmp.i.v NEQ
bf [36]

:[35]
push.v 302.y
pushi.e 100
sub.i.v
push.v 302.x
pushi.e 95
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
b [37]

:[36]
push.v 302.y
pushi.e 170
sub.i.v
push.v 302.x
pushi.e 95
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[37]
push.s "obj_questionasker_176"@21921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[end]