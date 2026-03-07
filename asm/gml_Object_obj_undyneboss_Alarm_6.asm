.localvar 0 arguments

:[0]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [2]

:[1]
push.v self.died
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [19]

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.75
mul.d.v
cmp.v.v LT
bf [6]

:[5]
push.v self.lesson
pushi.e 5
cmp.i.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 6
pop.v.i self.lesson
pushi.e 6
pop.v.i self.order
pushi.e 1
pop.v.i self.damagecause

:[9]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LT
bf [11]

:[10]
push.v self.lesson
pushi.e 11
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 11
pop.v.i self.lesson
pushi.e 12
pop.v.i self.order
pushi.e 2
pop.v.i self.damagecause

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.2
mul.d.v
cmp.v.v LT
bf [16]

:[15]
push.v self.lesson
pushi.e 20
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 20
pop.v.i self.lesson
pushi.e 22
pop.v.i self.order
pushi.e 3
pop.v.i self.damagecause
push.v self.rating
pushi.e 2
add.i.v
pop.v.v self.rating

:[19]
push.v self.order
pushi.e 12
cmp.i.v EQ
bf [21]

:[20]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 2
pushi.e -5
pushi.e 99
pop.v.i [array]global.flag

:[24]
push.v self.order
pushi.e 22
cmp.i.v EQ
bf [26]

:[25]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 3
pushi.e -5
pushi.e 99
pop.v.i [array]global.flag

:[29]
push.v self.lesson
pushi.e 19
cmp.i.v GT
bf [32]

:[30]
push.v 744.sprite_index
pushi.e 46
cmp.i.v EQ
bf [32]

:[31]
push.v self.defadjust
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [45]

:[34]
pushi.e -15
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.3
mul.d.v
cmp.v.v GT
bf [36]

:[35]
pushi.e -25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[36]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.4
mul.d.v
cmp.v.v GT
bf [38]

:[37]
pushi.e -35
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[38]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v GT
bf [40]

:[39]
pushi.e -50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[40]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.75
mul.d.v
cmp.v.v GT
bf [42]

:[41]
pushi.e -70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[42]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
bf [44]

:[43]
pushi.e -90
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[44]
pushi.e 1
pop.v.i self.defadjust

:[45]
pushi.e 0
pop.v.i self.blcontype
pushi.e 0
pop.v.i self.uncancel
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
push.s "obj_undyneboss_401"@28763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 20
cmp.i.v LT
bf [47]

:[46]
push.s "obj_undyneboss_402"@28765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
bf [49]

:[48]
push.s "obj_undyneboss_403"@28767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
push.v self.mycommand
pushi.e 60
cmp.i.v LT
bf [51]

:[50]
push.s "obj_undyneboss_404"@28769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.mycommand
pushi.e 80
cmp.i.v LT
bf [53]

:[52]
push.s "obj_undyneboss_405"@28771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.mycommand
pushi.e 100
cmp.i.v LT
bf [55]

:[54]
push.s "obj_undyneboss_406"@28773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.damagecause
pushi.e 0
cmp.i.v GT
bf [63]

:[56]
push.v self.damagecause
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_undyneboss_410"@28775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.damagecause
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_undyneboss_411"@28777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.damagecause
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_undyneboss_412"@28779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
pushi.e 1
pop.v.i self.blcontype

:[63]
push.s "obj_undyneboss_416"@28780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 39
pop.v.i global.typer
push.v self.order
pushi.e 0
cmp.i.v GT
bf [149]

:[64]
push.v self.order
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
pop.v.i self.uncancel
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_427"@28782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_428"@28784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_429"@28786
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[66]
push.v self.order
pushi.e 2
cmp.i.v EQ
bf [89]

:[67]
pushi.e 1
pop.v.i self.uncancel
pushi.e 1
pop.v.i self.blcontype
push.v self.mercied
pushi.e 0
cmp.i.v GT
bf [69]

:[68]
push.s "obj_undyneboss_437"@28788
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.s "obj_undyneboss_438"@28790
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_439"@28792
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.hitno
pushi.e 0
cmp.i.v GT
bf [71]

:[70]
push.v self.hitfirst
pushi.e 3
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
push.s "obj_undyneboss_442"@28794
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_443"@28796
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_444"@28798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneboss_445"@28800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyneboss_446"@28802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyneboss_447"@28804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyneboss_448"@28806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undyneboss_449"@28808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
pop.v.i self.rating
pushi.e 1
pop.v.i self.berserk
pushi.e 12
pop.v.i self.order
pushi.e 11
pop.v.i self.lesson
push.v self.hitfirst
pushi.e 1
add.i.v
pop.v.v self.hitfirst

:[74]
push.v self.hitno
pushi.e 0
cmp.i.v GT
bf [76]

:[75]
push.v self.hitfirst
pushi.e 2
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.s "obj_undyneboss_459"@28810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_460"@28812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_461"@28814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneboss_462"@28816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.order
pushi.e 1
pop.v.i self.lesson
push.v self.hitfirst
pushi.e 1
add.i.v
pop.v.v self.hitfirst

:[79]
push.v self.hitno
pushi.e 0
cmp.i.v GT
bf [81]

:[80]
push.v self.hitfirst
pushi.e 1
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.s "obj_undyneboss_470"@28818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_471"@28820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_472"@28822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneboss_473"@28823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.order
pushi.e 1
pop.v.i self.lesson
push.v self.hitfirst
pushi.e 1
add.i.v
pop.v.v self.hitfirst

:[84]
push.v self.hitno
pushi.e 0
cmp.i.v GT
bf [86]

:[85]
push.v self.hitfirst
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
push.s "obj_undyneboss_481"@28825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_482"@28827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_483"@28828
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.order
pushi.e 1
pop.v.i self.lesson
push.v self.hitfirst
pushi.e 1
add.i.v
pop.v.v self.hitfirst

:[89]
push.v self.order
pushi.e 3
cmp.i.v EQ
bf [91]

:[90]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_496"@28830
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[91]
push.v self.order
pushi.e 4
cmp.i.v EQ
bf [93]

:[92]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_501"@28832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[93]
push.v self.order
pushi.e 5
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_506"@28834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[95]
push.v self.order
pushi.e 6
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_undyneboss_510"@28836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.blcontype
pushi.e 1
pop.v.i self.uncancel

:[97]
push.v self.order
pushi.e 7
cmp.i.v EQ
bf [100]

:[98]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_515"@28838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercied
pushi.e 0
cmp.i.v GT
bf [100]

:[99]
pushi.e 1
pop.v.i self.uncancel
push.s "obj_undyneboss_519"@28840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_520"@28842
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[100]
push.v self.order
pushi.e 8
cmp.i.v EQ
bf [103]

:[101]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_528"@28844
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercied
pushi.e 0
cmp.i.v GT
bf [103]

:[102]
push.s "obj_undyneboss_530"@28846
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
push.v self.order
pushi.e 9
cmp.i.v EQ
bf [105]

:[104]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_538"@28848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[105]
push.v self.order
pushi.e 10
cmp.i.v EQ
bf [107]

:[106]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_546"@28850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[107]
push.v self.order
pushi.e 11
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_554"@28851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[109]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
bf [116]

:[110]
push.v self.order
pushi.e 9
cmp.i.v EQ
bf [112]

:[111]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_563"@28853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[112]
push.v self.order
pushi.e 10
cmp.i.v EQ
bf [114]

:[113]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_570"@28854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[114]
push.v self.order
pushi.e 11
cmp.i.v EQ
bf [116]

:[115]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_577"@28856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[116]
push.v self.order
pushi.e 12
cmp.i.v EQ
bf [118]

:[117]
push.v self.hitfirst
pushi.e 3
cmp.i.v LT
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
push.s "obj_undyneboss_582"@28858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.blcontype
pushi.e 1
pop.v.i self.uncancel

:[121]
push.v self.order
pushi.e 13
cmp.i.v EQ
bf [123]

:[122]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_587"@28860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[123]
push.v self.order
pushi.e 14
cmp.i.v EQ
bf [125]

:[124]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_593"@28862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[125]
push.v self.order
pushi.e 15
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_599"@28864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[127]
push.v self.order
pushi.e 16
cmp.i.v EQ
bf [129]

:[128]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_605"@28866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[129]
push.v self.order
pushi.e 17
cmp.i.v EQ
bf [131]

:[130]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_611"@28868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[131]
push.v self.order
pushi.e 18
cmp.i.v EQ
bf [133]

:[132]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_616"@28870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[133]
push.v self.order
pushi.e 19
cmp.i.v EQ
bf [135]

:[134]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_622"@28872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[135]
push.v self.order
pushi.e 20
cmp.i.v EQ
bf [137]

:[136]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_628"@28874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[137]
push.v self.order
pushi.e 21
cmp.i.v EQ
bf [139]

:[138]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_634"@28876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[139]
push.v self.order
pushi.e 22
cmp.i.v EQ
bf [141]

:[140]
push.s "obj_undyneboss_639"@28878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.blcontype
pushi.e 1
pop.v.i self.uncancel

:[141]
push.v self.order
pushi.e 23
cmp.i.v EQ
bf [144]

:[142]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_656"@28880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercied
pushi.e 0
cmp.i.v GT
bf [144]

:[143]
push.s "obj_undyneboss_658"@28882
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[144]
push.v self.order
pushi.e 24
cmp.i.v EQ
bf [147]

:[145]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_664"@28884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercied
pushi.e 0
cmp.i.v GT
bf [147]

:[146]
push.s "obj_undyneboss_666"@28886
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[147]
push.v self.order
pushi.e 24
cmp.i.v GT
bf [149]

:[148]
pushi.e 1
pop.v.i self.blcontype
push.s "obj_undyneboss_672"@28888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[149]
push.v self.order
pushi.e 0
cmp.i.v LT
bf [163]

:[150]
push.v self.order
pushi.e -40
cmp.i.v EQ
bf [152]

:[151]
push.s "obj_undyneboss_682"@28890
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[152]
push.v self.order
pushi.e -39
cmp.i.v EQ
bf [154]

:[153]
push.s "obj_undyneboss_686"@28892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_687"@28894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[154]
push.v self.order
pushi.e -38
cmp.i.v EQ
bf [156]

:[155]
push.s "obj_undyneboss_691"@28896
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[156]
push.v self.order
pushi.e -37
cmp.i.v EQ
bf [158]

:[157]
push.s "obj_undyneboss_695"@28898
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_696"@28900
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[158]
push.v self.order
pushi.e -36
cmp.i.v EQ
bf [160]

:[159]
push.s "obj_undyneboss_700"@28902
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_701"@28904
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[160]
push.v self.order
pushi.e -35
cmp.i.v EQ
bf [162]

:[161]
push.s "obj_undyneboss_705"@28906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[162]
pushi.e 1
pop.v.i self.blcontype
pushi.e 1
pop.v.i self.uncancel

:[163]
push.v self.blcontype
pushi.e 0
cmp.i.v EQ
bf [165]

:[164]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 245
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon

:[165]
push.v self.blcontype
pushi.e 1
cmp.i.v EQ
bf [167]

:[166]
pushi.e 188
conv.i.v
push.v self.blcony
push.v self.blconx
call.i instance_create(argc=3)
pop.v.v self.blcon

:[167]
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
push.v self.blconwd
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 10
add.i.v
pop.i.v [stacktop]self.writingxend
push.v self.mycommand
pushi.e 50
cmp.i.v GT
bf [169]

:[168]
push.v 744.sprite_index
pushi.e 51
cmp.i.v NEQ
b [170]

:[169]
push.e 0

:[170]
bf [172]

:[171]
pushi.e 1
pop.v.i self.borderspec
b [173]

:[172]
pushi.e 0
pop.v.i self.borderspec

:[173]
pushi.e 6
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
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [175]

:[174]
pushi.e 13
pop.v.i global.border
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
pop.v.v 744.x
push.v 760.y
pushi.e 34
add.i.v
pop.v.v 744.y
pushi.e 1
pop.v.i self.greenlock
b [177]

:[175]
push.v self.borderspec
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
pop.v.v 744.x
push.v 760.y
pushi.e 34
add.i.v
pop.v.v 744.y
pushi.e 14
pop.v.i global.border

:[177]
pushi.e 0
pop.v.i self.damagecause

:[end]