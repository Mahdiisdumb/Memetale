.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.buffer
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 122
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [22]

:[12]
push.v self.side
pushi.e 2
add.i.v
pop.v.v self.side
push.v self.side
pushi.e 20
cmp.i.v GTE
bf [22]

:[13]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
push.v self.s1
conv.v.i
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
push.v self.s2
conv.v.i
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 1172
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[18]
pushbltn.v self.room
pushi.e 212
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 50
pop.v.i 1249.con
pushi.e 1
pop.v.i global.interact
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m

:[22]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [25]

:[23]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.con
pushi.e 40
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 1
pop.v.i global.interact
pushi.e 41
pop.v.i self.con

:[28]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [34]

:[29]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.msc
push.s "obj_elevatordoor_215"@12106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_elevatordoor_218"@12108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_elevatordoor_219"@12109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_elevatordoor_220"@12111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_elevatordoor_221"@12112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_elevatordoor_222"@12114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_elevatordoor_223"@12115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_elevatordoor_224"@12116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 415
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_elevatordoor_228"@12118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_elevatordoor_229"@12119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_elevatordoor_230"@12120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[31]
pushi.e 1
pushi.e -5
pushi.e 414
pop.v.i [array]global.flag
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [33]

:[32]
push.s "obj_elevatordoor_234"@12122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 42
pop.v.i self.con

:[34]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [36]

:[35]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 4
pop.v.i self.buffer
pushi.e 43
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact

:[39]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [42]

:[40]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 1
pop.v.i global.interact
push.s "obj_elevatordoor_250"@12123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 42
pop.v.i self.con

:[45]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [48]

:[46]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [end]

:[50]
pushi.e 1
pop.v.i global.interact
push.s "obj_elevatordoor_258"@12125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 42
pop.v.i self.con

:[end]