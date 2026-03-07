.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 1576.x
pushi.e 200
cmp.i.v GT
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[6]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [10]

:[7]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
push.s "obj_powerlaser_event_178"@21678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_179"@21679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_180"@21681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_181"@21683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_182"@21685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_183"@21686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_184"@21688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_185"@21690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_186"@21692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_187"@21694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_188"@21696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_189"@21697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_190"@21699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_191"@21700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_192"@21701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e -5
pushi.e 417
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_powerlaser_event_195"@21702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_196"@21703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_197"@21705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_198"@21706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_199"@21707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_200"@21708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_201"@21709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_202"@21710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_203"@21711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_204"@21712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_205"@21713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_206"@21714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_207"@21715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_208"@21716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_209"@21717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_210"@21718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg

:[9]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 11
pop.v.i self.con

:[10]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [19]

:[14]
push.v 784.stringno
pushi.e 12
cmp.i.v EQ
bf [16]

:[15]
push.v self.powered
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
push.v self.con
pushi.e 11
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
pushi.e 1185
conv.i.v
pushi.e 80
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
pushi.e 5
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[24]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [27]

:[25]
push.v 1576.x
pushi.e 580
cmp.i.v GT
bf [27]

:[26]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 1
pop.v.i global.interact
pushi.e 13
pop.v.i self.con

:[30]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [32]

:[31]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
push.s "obj_powerlaser_event_244"@21719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_245"@21720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_246"@21722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 14
pop.v.i self.con

:[32]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [34]

:[33]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 15
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i global.msc
push.s "obj_powerlaser_event_264"@21724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_265"@21726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_266"@21727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_267"@21729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_268"@21731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_269"@21733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_270"@21734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_271"@21735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 17
pop.v.i self.con

:[39]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [41]

:[40]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushglb.v global.hp
pop.v.v self.remhp
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.flasher
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 37
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.backuptimer

:[44]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [50]

:[45]
pushi.e -1
pushi.e 3
push.v [array]self.alarm
pushi.e -1
cmp.i.v EQ
bf [47]

:[46]
push.v self.backuptimer
pushi.e 1
sub.i.v
pop.v.v self.backuptimer
b [48]

:[47]
pushi.e 8
pop.v.i self.backuptimer

:[48]
push.v self.backuptimer
pushi.e 0
cmp.i.v LT
bf [50]

:[49]
pushi.e 37
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[50]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [56]

:[51]
pushglb.v global.hp
push.v self.remhp
cmp.v.v LT
bf [53]

:[52]
push.v self.hptalk
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
push.s "obj_powerlaser_event_304"@21736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_305"@21737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_306"@21739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_307"@21741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_308"@21743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_309"@21744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_310"@21745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 19
pop.v.i self.con
pushi.e 1
pop.v.i self.hptalk
call.i scr_regulartext(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact

:[56]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [58]

:[57]
push.v self.hptalk
pushi.e 1
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 1
pop.v.i global.interact

:[61]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [64]

:[62]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.v self.hptalk
pushi.e 1
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 2
pop.v.i self.hptalk
pushi.e 0
pop.v.i global.interact
pushi.e 18
pop.v.i self.con

:[67]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [69]

:[68]
push.v 1576.x
pushi.e 1040
cmp.i.v GT
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pop.v.i global.interact
pushi.e 22
pop.v.i self.con

:[72]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [76]

:[73]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
push.s "obj_powerlaser_event_341"@21746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_342"@21747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_343"@21749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_344"@21751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_345"@21752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_powerlaser_event_346"@21753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 23
pop.v.i self.con
pushi.e 1
pop.v.i self.hptalk
call.i scr_regulartext(argc=0)
popz.v
pushi.e -1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.powered
pushi.e 0
pop.v.i self.drawblack
pushi.e 2
pop.v.i 1283.active
pushi.e 1185
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]
pushi.e 1341
conv.i.v
pushi.e 120
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 184
pop.v.i global.plot

:[76]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [78]

:[77]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [end]

:[80]
pushi.e 0
pop.v.i global.interact
pushi.e 24
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]