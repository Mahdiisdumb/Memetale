.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i global.facing
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 120
pop.v.i 1576.x
pushi.e 160
pop.v.i 1576.y
pushi.e 1
pop.v.i global.interact

:[3]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [19]

:[4]
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 37
pop.v.i global.typer
push.s "obj_undynedate_afterward_114"@29037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_115"@29039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_116"@29041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_117"@29043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_118"@29045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_119"@29047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_120"@29049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_121"@29051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_122"@29053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.con
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.won
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i self.d
push.v self.won
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
pushi.e 1
pop.v.i self.d

:[6]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [8]

:[7]
pushi.e 1
pop.v.i self.d

:[8]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
pushi.e 1
pop.v.i self.d

:[10]
pushglb.v global.plot
pushi.e 198
cmp.i.v LTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.d

:[12]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 8
cmp.i.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.d

:[14]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [18]

:[15]
pushi.e 56
conv.i.v
call.i scr_itemget(argc=1)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_undynedate_afterward_140"@29054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_141"@29055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_142"@29056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_143"@29057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_144"@29058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_145"@29059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_146"@29060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_147"@29061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_148"@29063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_149"@29065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_150"@29067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_151"@29069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_152"@29071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_153"@29073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_154"@29075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_155"@29076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_156"@29078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 17
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undynedate_afterward_158"@29080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_159"@29082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_160"@29083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_161"@29085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_162"@29087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_163"@29089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.flag
pushi.e 9
pushi.e -5
pushi.e 493
pop.v.i [array]global.flag
b [18]

:[17]
push.s "obj_undynedate_afterward_169"@29090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_170"@29091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_171"@29092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_172"@29093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_173"@29094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_174"@29095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_175"@29096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_176"@29097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_177"@29098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_178"@29099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_179"@29100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_180"@29102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_181"@29104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_182"@29106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynedate_afterward_183"@29108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 8
pushi.e -5
pushi.e 493
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.flag

:[18]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[19]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 6
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1494
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[25]
pushi.e 6
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 4
pushi.e -5
pushi.e 389
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 465
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]