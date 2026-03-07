.localvar 0 arguments
.localvar 1 writerx 1511
.localvar 2 writery 1512

:[0]
pushi.e 60
pop.v.i local.writerx
pushi.e 60
pop.v.i local.writery
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 95
pop.v.i local.writerx

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_regret_111"@12465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
push.d 1.1
pop.v.d self.con

:[4]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.d 0.9
pop.v.d self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
push.d 1.9
cmp.d.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_regret_128"@12467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_129"@12469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_130"@12471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_131"@12473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_132"@12475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
push.d 0.2
pop.v.d self.con

:[11]
push.v self.con
push.d 0.2
cmp.d.v EQ
bf [13]

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.d 1.2
pop.v.d self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
push.d 2.2
cmp.d.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_regret_148"@12476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_149"@12478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_150"@12480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_151"@12482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_152"@12484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_153"@12486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_154"@12487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_155"@12489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_156"@12491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_157"@12493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_158"@12495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_159"@12497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_160"@12499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_161"@12501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_162"@12503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_163"@12505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_164"@12507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_165"@12508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_166"@12510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_167"@12512
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_168"@12514
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_169"@12516
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_170"@12518
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_171"@12520
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_172"@12522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_173"@12524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_174"@12525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_175"@12527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_176"@12529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_177"@12531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_178"@12533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
push.d 0.3
pop.v.d self.con

:[18]
push.v self.con
push.d 0.3
cmp.d.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.d 1.3
pop.v.d self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
push.d 2.3
cmp.d.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_regret_195"@12534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_197"@12536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_199"@12538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_201"@12540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_203"@12541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_205"@12543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_207"@12544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_209"@12546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_211"@12548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_213"@12549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_215"@12551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_regret_217"@12553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.v self.chara
push.s "obj_endflowey_regret_219"@12555
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[25]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 3
pop.v.i self.flowey
pushi.e 3
pop.v.i self.con
pushi.e 200
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[31]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 323
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]