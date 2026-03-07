.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 3
cmp.i.v NEQ
bf [18]

:[1]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.s "obj_asrielfinal_723"@10314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 75
cmp.i.v LT
bf [3]

:[2]
push.s "obj_asrielfinal_724"@10315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [5]

:[4]
push.s "obj_asrielfinal_725"@10316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
bf [7]

:[6]
push.s "obj_asrielfinal_726"@10317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_asrielfinal_732"@10318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_asrielfinal_737"@10319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_asrielfinal_741"@10320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.s "obj_asrielfinal_746"@10321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
push.v self.blcon
conv.v.i
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
push.v self.blconwd
conv.v.i
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 17
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[18]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [33]

:[19]
pushi.e 188
conv.i.v
pushi.e 50
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i global.msc
pushi.e 86
pop.v.i global.typer
pushi.e -5
pushi.e 12
push.v [array]global.tempvalue
pushi.e 0
cmp.i.v EQ
bt [21]

:[20]
pushi.e -5
pushi.e 12
push.v [array]global.tempvalue
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
push.s "obj_asrielfinal_767"@10323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
pushi.e -5
pushi.e 12
push.v [array]global.tempvalue
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_asrielfinal_771"@10325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_772"@10327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_773"@10329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_774"@10331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[26]
pushi.e -5
pushi.e 12
push.v [array]global.tempvalue
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_asrielfinal_779"@10333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_780"@10335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_781"@10337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_782"@10339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[28]
pushi.e -5
pushi.e 12
push.v [array]global.tempvalue
pushi.e 4
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_asrielfinal_787"@10341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_788"@10343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_789"@10345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_790"@10347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[30]
pushi.e -5
pushi.e 12
push.v [array]global.tempvalue
pushi.e 5
cmp.i.v GTE
bf [32]

:[31]
push.s "obj_asrielfinal_796"@10349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -2200
push.v self.blconwd
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 17
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[33]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [end]

:[34]
pushi.e 188
conv.i.v
pushi.e 50
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i global.msc
pushi.e 86
pop.v.i global.typer
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_asrielfinal_819"@10351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_820"@10353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_821"@10355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[36]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_asrielfinal_826"@10357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_827"@10359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_828"@10361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[38]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_asrielfinal_833"@10362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_834"@10363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_835"@10365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_836"@10367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[40]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_asrielfinal_841"@10369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_842"@10371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_843"@10373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_844"@10375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[42]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_asrielfinal_849"@10376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_850"@10378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_851"@10380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_852"@10382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asrielfinal_853"@10384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asrielfinal_854"@10386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[44]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_asrielfinal_859"@10388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_860"@10390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_861"@10392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[46]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [48]

:[47]
pushi.e 88
pop.v.i global.typer
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.cry
push.s "obj_asrielfinal_868"@10394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_869"@10396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[48]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bf [54]

:[49]
push.v self.mypart1
conv.v.i
pushenv [51]

:[50]
push.v self.bodyfader
push.d 0.2
add.d.v
pop.v.v self.bodyfader

:[51]
popenv [50]
pushi.e 567
pushenv [53]

:[52]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[53]
popenv [52]
pushi.e 87
pop.v.i global.typer
push.s "obj_asrielfinal_877"@10398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_878"@10400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[54]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bf [60]

:[55]
push.v self.mypart1
conv.v.i
pushenv [57]

:[56]
push.v self.bodyfader
push.d 0.2
add.d.v
pop.v.v self.bodyfader

:[57]
popenv [56]
pushi.e 567
pushenv [59]

:[58]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[59]
popenv [58]
pushi.e 87
pop.v.i global.typer
push.s "obj_asrielfinal_886"@10402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.turns
pushi.e 9
cmp.i.v EQ
bf [66]

:[61]
push.v self.mypart1
conv.v.i
pushenv [63]

:[62]
push.v self.bodyfader
push.d 0.2
add.d.v
pop.v.v self.bodyfader

:[63]
popenv [62]
pushi.e 567
pushenv [65]

:[64]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[65]
popenv [64]
pushi.e 87
pop.v.i global.typer
push.s "obj_asrielfinal_894"@10404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.turns
pushi.e 10
cmp.i.v EQ
bf [72]

:[67]
push.v self.mypart1
conv.v.i
pushenv [69]

:[68]
push.v self.bodyfader
push.d 0.2
add.d.v
pop.v.v self.bodyfader

:[69]
popenv [68]
pushi.e 567
pushenv [71]

:[70]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[71]
popenv [70]
pushi.e 87
pop.v.i global.typer
push.s "obj_asrielfinal_903"@10406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
push.v self.turns
pushi.e 11
cmp.i.v EQ
bf [78]

:[73]
push.v self.mypart1
conv.v.i
pushenv [75]

:[74]
push.v self.bodyfader
push.d 0.2
add.d.v
pop.v.v self.bodyfader

:[75]
popenv [74]
pushi.e 567
pushenv [77]

:[76]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[77]
popenv [76]
pushi.e 87
pop.v.i global.typer
push.s "obj_asrielfinal_911"@10408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.endcon

:[78]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -2200
push.v self.blconwd
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 17
pop.v.i global.border
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [80]

:[79]
pushi.e 4
pop.v.i global.border

:[80]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]