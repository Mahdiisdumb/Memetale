.localvar 0 arguments
.localvar 1 xx 3614

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 450
conv.i.v
pushi.e 25
conv.i.v
push.v self.mystring
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 15
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
add.i.v
call.i draw_text_ext(argc=5)
popz.v
push.v self.keyboard_present
conv.v.b
bf [16]

:[1]
push.v self.cantype
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushi.e 430
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [4]

:[3]
pushi.e 400
pop.v.i local.xx

:[4]
push.s "mett_essay_prompt_pc"@32218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 50
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
b [6]

:[5]
push.s "mett_essay_timeup"@32224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 430
conv.i.v
call.i draw_text(argc=3)
popz.v

:[6]
push.v self.dotimer
pushi.e 1
add.i.v
pop.v.v self.dotimer
push.v self.dotimer
pushi.e 4
cmp.i.v GT
bf [11]

:[7]
push.v self.draw_on
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.draw_on
b [10]

:[9]
pushi.e 0
pop.v.i self.draw_on

:[10]
pushi.e 0
pop.v.i self.dotimer

:[11]
push.v self.draw_on
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 3
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.s "mett_essay_start"@32222
conv.s.v
call.i scr_gettext(argc=1)
push.v 744.y
pushi.e 20
add.i.v
push.v 744.x
pushi.e 30
sub.i.v
call.i draw_text(argc=3)
popz.v

:[16]
push.s "/%%"@48805
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [517]

:[17]
push.v self.mystring
call.i string_length(argc=1)
pop.v.v self.leng
push.v self.mystring
call.i string_length(argc=1)
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_essaystuff_159"@12624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_essaystuff_160"@12626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 2
cmp.i.v GT
bf [23]

:[22]
push.s "obj_essaystuff_161"@12628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 13
cmp.i.v GT
bf [25]

:[24]
push.s "obj_essaystuff_162"@12630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 50
cmp.i.v GT
bf [27]

:[26]
push.s "obj_essaystuff_163"@12632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[27]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 90
cmp.i.v GT
bf [29]

:[28]
push.s "obj_essaystuff_164"@12634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_essaystuff_165"@12636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_essaystuff_166"@12638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[29]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 140
cmp.i.v GT
bf [31]

:[30]
push.s "obj_essaystuff_168"@12640
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
pushi.e 0
pop.v.i self.spec
pushi.e 0
pop.v.i self.swear
pushi.e 0
pop.v.i self.nice
pushi.e 0
pop.v.i self.beaut
push.v self.mystring
call.i string_lower(argc=1)
call.i string_to_hiragana(argc=1)
pop.v.v self.mystring_l
push.v self.mystring_l
push.s "beaut"@48809
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[33]
push.v self.mystring_l
push.s "hot"@48811
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[35]
push.v self.mystring_l
push.s "sexy"@48812
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[37]
push.v self.mystring_l
push.s "pretty"@48813
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[39]
push.v self.mystring_l
push.s "handsome"@48814
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [41]

:[40]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[41]
push.v self.mystring_l
push.s "gorgeous"@48815
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[43]
push.v self.mystring_l
push.s "sparkl"@48816
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [45]

:[44]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[45]
push.v self.mystring_l
push.s "charm"@48817
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[47]
push.v self.mystring_l
push.s "attract"@48818
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [49]

:[48]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[49]
push.v self.mystring_l
push.s "cute"@48819
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [51]

:[50]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[51]
push.v self.mystring_l
push.s "smokin"@48820
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [53]

:[52]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[53]
push.v self.mystring_l
push.s "elegant"@48821
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [55]

:[54]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[55]
push.v self.mystring_l
push.s "good look"@48822
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [57]

:[56]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[57]
push.v self.mystring_l
push.s "goodlook"@48823
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [59]

:[58]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[59]
push.v self.mystring_l
push.s "good-look"@48824
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [61]

:[60]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[61]
push.v self.mystring_l
push.s "grace"@48825
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [63]

:[62]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[63]
push.v self.mystring_l
push.s "comely"@48826
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [65]

:[64]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[65]
push.v self.mystring_l
push.s "fine"@48827
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [67]

:[66]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[67]
push.v self.mystring_l
push.s "foxy"@48828
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [69]

:[68]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[69]
push.v self.mystring_l
push.s "looker"@48829
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [71]

:[70]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[71]
push.v self.mystring_l
push.s "dreamboat"@48830
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [73]

:[72]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[73]
push.v self.mystring_l
push.s "stun"@48831
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [75]

:[74]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[75]
push.v self.mystring_l
push.s "shapely"@48832
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [77]

:[76]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[77]
push.v self.mystring_l
push.s "ravishing"@48833
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [79]

:[78]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[79]
push.v self.mystring_l
push.s "allur"@48834
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [81]

:[80]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[81]
push.v self.mystring_l
push.s "entic"@48835
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [83]

:[82]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[83]
push.v self.mystring_l
push.s "seduct"@48836
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [85]

:[84]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[85]
push.v self.mystring_l
push.s "enchant"@48837
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [87]

:[86]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[87]
push.v self.mystring_l
push.s "appeal"@48838
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [89]

:[88]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[89]
push.v self.mystring_l
push.s "tantaliz"@48839
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [91]

:[90]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[91]
push.v self.mystring_l
push.s "adorable"@48840
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [93]

:[92]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[93]
push.v self.mystring_l
push.s "radiant"@48841
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [95]

:[94]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[95]
push.v self.mystring_l
push.s "capitvat"@48842
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [97]

:[96]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[97]
push.v self.mystring_l
push.s "leg"@30024
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [99]

:[98]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 1
pop.v.i self.spec

:[99]
push.v self.mystring_l
push.s "arm"@48591
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [101]

:[100]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 2
pop.v.i self.spec

:[101]
push.v self.mystring_l
push.s "hair"@48242
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [103]

:[102]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 3
pop.v.i self.spec

:[103]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [182]

:[104]
push.v self.mystring_l
push.s "かっこいい"@48843
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [106]

:[105]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[106]
push.v self.mystring_l
push.s "いけめん"@48844
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [108]

:[107]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[108]
push.v self.mystring_l
push.s "せくしー"@48845
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [110]

:[109]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[110]
push.v self.mystring_l
push.s "ほっと"@48846
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [112]

:[111]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[112]
push.v self.mystring_l
push.s "はんさむ"@48847
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [114]

:[113]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[114]
push.v self.mystring_l
push.s "ごーじゃす"@48848
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [116]

:[115]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[116]
push.v self.mystring_l
push.s "ちゃーみんぐ"@48849
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [118]

:[117]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[118]
push.v self.mystring_l
push.s "すてき"@48850
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [120]

:[119]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[120]
push.v self.mystring_l
push.s "かわいい"@48851
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [122]

:[121]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[122]
push.v self.mystring_l
push.s "うつくしい"@48852
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [124]

:[123]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[124]
push.v self.mystring_l
push.s "えれがんと"@48853
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [126]

:[125]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[126]
push.v self.mystring_l
push.s "びだんし"@48854
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [128]

:[127]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[128]
push.v self.mystring_l
push.s "びしょうねん"@48855
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [130]

:[129]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[130]
push.v self.mystring_l
push.s "びなん"@48856
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [132]

:[131]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[132]
push.v self.mystring_l
push.s "きれい"@48857
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [134]

:[133]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[134]
push.v self.mystring_l
push.s "いけてる"@48858
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [136]

:[135]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[136]
push.v self.mystring_l
push.s "みりょくてき"@48859
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [138]

:[137]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[138]
push.v self.mystring_l
push.s "みわく"@48860
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [140]

:[139]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[140]
push.v self.mystring_l
push.s "びぼう"@48861
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [142]

:[141]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[142]
push.v self.mystring_l
push.s "じょうひん"@48862
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [144]

:[143]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[144]
push.v self.mystring_l
push.s "ゆうが"@48863
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [146]

:[145]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[146]
push.v self.mystring_l
push.s "ゆうび"@48864
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [148]

:[147]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[148]
push.v self.mystring_l
push.s "きひん"@48865
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [150]

:[149]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[150]
push.v self.mystring_l
push.s "もてもて"@48866
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [152]

:[151]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[152]
push.v self.mystring_l
push.s "もてる"@48867
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [154]

:[153]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[154]
push.v self.mystring_l
push.s "さいこう"@48868
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [156]

:[155]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[156]
push.v self.mystring_l
push.s "さいこー"@48869
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [158]

:[157]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[158]
push.v self.mystring_l
push.s "きりょうよし"@48870
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [160]

:[159]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[160]
push.v self.mystring_l
push.s "うるわしい"@48871
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [162]

:[161]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[162]
push.v self.mystring_l
push.s "せいたん"@48872
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [164]

:[163]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[164]
push.v self.mystring_l
push.s "りそうてき"@48873
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [166]

:[165]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[166]
push.v self.mystring_l
push.s "ましょう"@48874
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [168]

:[167]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[168]
push.v self.mystring_l
push.s "ゆうわく"@48875
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [170]

:[169]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[170]
push.v self.mystring_l
push.s "のうさつ"@48876
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [172]

:[171]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice

:[172]
push.v self.mystring_l
push.s "あし"@45470
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [174]

:[173]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 1
pop.v.i self.spec

:[174]
push.v self.mystring_l
push.s "うで"@48877
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [176]

:[175]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 2
pop.v.i self.spec

:[176]
push.v self.mystring_l
push.s "かみ"@48878
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [178]

:[177]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 3
pop.v.i self.spec

:[178]
push.v self.mystring_l
push.s "へあすたいる"@48879
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [180]

:[179]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 3
pop.v.i self.spec

:[180]
push.v self.mystring_l
push.s "へあーすたいる"@48880
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [182]

:[181]
push.v self.beaut
pushi.e 2
add.i.v
pop.v.v self.beaut
push.v self.nice
pushi.e 1
add.i.v
pop.v.v self.nice
pushi.e 3
pop.v.i self.spec

:[182]
push.v self.beaut
pushi.e 1
cmp.i.v GT
bf [184]

:[183]
push.s "obj_essaystuff_219"@12642
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[184]
push.v self.beaut
pushi.e 3
cmp.i.v GT
bf [186]

:[185]
push.s "obj_essaystuff_220"@12644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[186]
push.v self.beaut
pushi.e 5
cmp.i.v GT
bf [188]

:[187]
push.s "obj_essaystuff_221"@12646
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[188]
push.v self.beaut
pushi.e 7
cmp.i.v GT
bf [190]

:[189]
push.s "obj_essaystuff_222"@12648
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[190]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
push.s "obj_essaystuff_224"@12650
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[192]
push.v self.spec
pushi.e 2
cmp.i.v EQ
bf [194]

:[193]
push.s "obj_essaystuff_225"@12652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[194]
push.v self.spec
pushi.e 3
cmp.i.v EQ
bf [196]

:[195]
push.s "obj_essaystuff_226"@12654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[196]
push.v self.mystring_l
push.s "personality"@48881
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [198]

:[197]
push.d 3.1
pop.v.d self.spec

:[198]
push.v self.mystring_l
push.s "voice"@48882
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [200]

:[199]
push.d 3.2
pop.v.d self.spec

:[200]
push.v self.mystring_l
push.s "dancing"@48883
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [202]

:[201]
push.d 3.3
pop.v.d self.spec

:[202]
push.v self.mystring_l
push.s "dance"@48725
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [204]

:[203]
push.d 3.3
pop.v.d self.spec

:[204]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [219]

:[205]
push.v self.mystring_l
push.s "せいかく"@48884
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [207]

:[206]
push.d 3.1
pop.v.d self.spec

:[207]
push.v self.mystring_l
push.s "ひとがら"@48885
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [209]

:[208]
push.d 3.1
pop.v.d self.spec

:[209]
push.v self.mystring_l
push.s "こえ"@48886
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [211]

:[210]
push.d 3.2
pop.v.d self.spec

:[211]
push.v self.mystring_l
push.s "うた"@48887
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [213]

:[212]
push.d 3.2
pop.v.d self.spec

:[213]
push.v self.mystring_l
push.s "だんす"@48888
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [215]

:[214]
push.d 3.3
pop.v.d self.spec

:[215]
push.v self.mystring_l
push.s "おどり"@48889
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [217]

:[216]
push.d 3.3
pop.v.d self.spec

:[217]
push.v self.mystring_l
push.s "おどる"@48890
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [219]

:[218]
push.d 3.3
pop.v.d self.spec

:[219]
push.v self.spec
push.d 3.1
cmp.d.v EQ
bf [221]

:[220]
push.s "obj_essaystuff_233"@12656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[221]
push.v self.spec
push.d 3.2
cmp.d.v EQ
bf [223]

:[222]
push.s "obj_essaystuff_234"@12658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_essaystuff_235"@12660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[223]
push.v self.spec
push.d 3.3
cmp.d.v EQ
bf [225]

:[224]
push.s "obj_essaystuff_236"@12662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[225]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [254]

:[226]
push.v self.mystring_l
push.s "おもしろい"@48891
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [228]

:[227]
pushi.e 101
pop.v.i self.spec

:[228]
push.v self.mystring_l
push.s "ひょうきん"@48892
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [230]

:[229]
pushi.e 101
pop.v.i self.spec

:[230]
push.v self.mystring_l
push.s "わらえる"@48893
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [232]

:[231]
pushi.e 101
pop.v.i self.spec

:[232]
push.v self.mystring_l
push.s "おもろい"@48894
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [234]

:[233]
pushi.e 101
pop.v.i self.spec

:[234]
push.v self.mystring_l
push.s "ゆーもあ"@48895
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [236]

:[235]
pushi.e 101
pop.v.i self.spec

:[236]
push.v self.mystring_l
push.s "ぎゃぐ"@48896
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [238]

:[237]
pushi.e 101
pop.v.i self.spec

:[238]
push.v self.mystring_l
push.s "じょーく"@48897
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [240]

:[239]
pushi.e 101
pop.v.i self.spec

:[240]
push.v self.mystring_l
push.s "ばくしょう"@48898
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [242]

:[241]
pushi.e 101
pop.v.i self.spec

:[242]
push.v self.mystring_l
push.s "おわらい"@48899
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [244]

:[243]
pushi.e 101
pop.v.i self.spec

:[244]
push.v self.mystring_l
push.s "うける"@48900
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [246]

:[245]
pushi.e 101
pop.v.i self.spec

:[246]
push.v self.mystring_l
push.s "やばい"@48901
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [248]

:[247]
pushi.e 102
pop.v.i self.spec

:[248]
push.v self.mystring_l
push.s "げきやば"@48902
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [250]

:[249]
pushi.e 102
pop.v.i self.spec

:[250]
push.v self.mystring_l
push.s "えもい"@48903
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [252]

:[251]
pushi.e 103
pop.v.i self.spec

:[252]
push.v self.mystring_l
push.s "にほんご"@46959
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [254]

:[253]
pushi.e 104
pop.v.i self.spec

:[254]
push.v self.spec
pushi.e 100
cmp.i.v GT
bf [256]

:[255]
push.s "obj_essaystuff_ja_"@48904
push.v self.spec
pushi.e 100
sub.i.v
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[256]
push.v self.spec
pushi.e 5
cmp.i.v EQ
bf [258]

:[257]
push.s "obj_essaystuff_264"@12666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[258]
push.v self.mystring_l
push.s "ugly"@48905
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [260]

:[259]
pushi.e 4
pop.v.i self.spec

:[260]
push.v self.mystring_l
push.s "hideous"@48906
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [262]

:[261]
pushi.e 4
pop.v.i self.spec

:[262]
push.v self.mystring_l
push.s "repulsive"@48907
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [264]

:[263]
pushi.e 4
pop.v.i self.spec

:[264]
push.v self.mystring_l
push.s "unattractive"@48908
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [266]

:[265]
pushi.e 4
pop.v.i self.spec

:[266]
push.v self.mystring_l
push.s "look bad"@48909
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [268]

:[267]
pushi.e 4
pop.v.i self.spec

:[268]
push.v self.mystring_l
push.s "stupid"@48910
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [270]

:[269]
pushi.e 4
pop.v.i self.spec

:[270]
push.v self.mystring_l
push.s "idiot"@48911
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [272]

:[271]
pushi.e 4
pop.v.i self.spec

:[272]
push.v self.mystring_l
push.s "jerk"@48912
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [274]

:[273]
pushi.e 4
pop.v.i self.spec

:[274]
push.v self.mystring_l
push.s "asshole"@48913
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [276]

:[275]
pushi.e 4
pop.v.i self.spec

:[276]
push.v self.mystring_l
push.s "loser"@48914
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [278]

:[277]
pushi.e 4
pop.v.i self.spec

:[278]
push.v self.mystring_l
push.s "dumbass"@48915
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [280]

:[279]
pushi.e 4
pop.v.i self.spec

:[280]
push.v self.mystring_l
push.s "douche"@48916
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [282]

:[281]
pushi.e 4
pop.v.i self.spec

:[282]
push.v self.mystring_l
push.s "creep"@48152
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [284]

:[283]
pushi.e 4
pop.v.i self.spec

:[284]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [309]

:[285]
push.v self.mystring_l
push.s "きもい"@48917
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [287]

:[286]
pushi.e 4
pop.v.i self.spec

:[287]
push.v self.mystring_l
push.s "ぶさめん"@48918
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [289]

:[288]
pushi.e 4
pop.v.i self.spec

:[289]
push.v self.mystring_l
push.s "きもめん"@48919
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [291]

:[290]
pushi.e 4
pop.v.i self.spec

:[291]
push.v self.mystring_l
push.s "さいあく"@48920
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [293]

:[292]
pushi.e 4
pop.v.i self.spec

:[293]
push.v self.mystring_l
push.s "さいてー"@48921
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [295]

:[294]
pushi.e 4
pop.v.i self.spec

:[295]
push.v self.mystring_l
push.s "さいてい"@48922
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [297]

:[296]
pushi.e 4
pop.v.i self.spec

:[297]
push.v self.mystring_l
push.s "へんたい"@48923
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [299]

:[298]
pushi.e 4
pop.v.i self.spec

:[299]
push.v self.mystring_l
push.s "きしょい"@48924
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [301]

:[300]
pushi.e 4
pop.v.i self.spec

:[301]
push.v self.mystring_l
push.s "きしょくわるい"@48925
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [303]

:[302]
pushi.e 4
pop.v.i self.spec

:[303]
push.v self.mystring_l
push.s "きもちわるい"@48926
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [305]

:[304]
pushi.e 4
pop.v.i self.spec

:[305]
push.v self.mystring_l
push.s "ぶさいく"@48927
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [307]

:[306]
pushi.e 4
pop.v.i self.spec

:[307]
push.v self.mystring_l
push.s "ぶす"@48928
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [309]

:[308]
pushi.e 4
pop.v.i self.spec

:[309]
push.v self.spec
pushi.e 4
cmp.i.v EQ
bf [311]

:[310]
push.s "obj_essaystuff_255"@12664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[311]
push.v self.mystring_l
push.s "i love you"@48929
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [313]

:[312]
pushi.e 5
pop.v.i self.spec

:[313]
push.v self.mystring_l
push.s "i love your"@48930
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [315]

:[314]
pushi.e 0
pop.v.i self.spec

:[315]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [328]

:[316]
push.v self.mystring_l
push.s "すき"@48931
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [318]

:[317]
pushi.e 5
pop.v.i self.spec

:[318]
push.v self.mystring_l
push.s "あいらぶゆー"@48932
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [320]

:[319]
pushi.e 5
pop.v.i self.spec

:[320]
push.v self.mystring_l
push.s "あいしてる"@48933
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [322]

:[321]
pushi.e 5
pop.v.i self.spec

:[322]
push.v self.mystring_l
push.s "あいしている"@48934
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [324]

:[323]
pushi.e 5
pop.v.i self.spec

:[324]
push.v self.mystring_l
push.s "あいしてます"@48935
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [326]

:[325]
pushi.e 5
pop.v.i self.spec

:[326]
push.v self.mystring_l
push.s "あいしています"@48936
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [328]

:[327]
pushi.e 5
pop.v.i self.spec

:[328]
push.v self.spec
pushi.e 5
cmp.i.v EQ
bf [330]

:[329]
push.s "obj_essaystuff_264"@12666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[330]
push.v self.mystring_l
push.s "Luke"@48937
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [332]

:[331]
pushi.e 6
pop.v.i self.spec

:[332]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [335]

:[333]
push.v self.mystring_l
push.s "とびー"@48938
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [335]

:[334]
pushi.e 6
pop.v.i self.spec

:[335]
push.v self.spec
pushi.e 6
cmp.i.v EQ
bf [337]

:[336]
push.s "obj_essaystuff_271"@12668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[337]
push.v self.mystring_l
push.s "fuck"@48939
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [339]

:[338]
pushi.e 1
pop.v.i self.swear

:[339]
push.v self.mystring_l
push.s "shit"@48940
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [341]

:[340]
pushi.e 1
pop.v.i self.swear

:[341]
push.v self.mystring_l
push.s "cock"@48941
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [343]

:[342]
pushi.e 1
pop.v.i self.swear

:[343]
push.v self.mystring_l
push.s "pussy"@48942
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [345]

:[344]
pushi.e 1
pop.v.i self.swear

:[345]
push.v self.mystring_l
push.s "penis"@48943
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [347]

:[346]
pushi.e 1
pop.v.i self.swear

:[347]
push.v self.mystring_l
push.s "vagina"@48944
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [349]

:[348]
pushi.e 1
pop.v.i self.swear

:[349]
push.v self.mystring_l
push.s "anus"@48945
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [351]

:[350]
pushi.e 1
pop.v.i self.swear

:[351]
push.v self.mystring_l
push.s "poop"@48946
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [353]

:[352]
pushi.e 1
pop.v.i self.swear

:[353]
push.v self.mystring_l
push.s "tity"@48947
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [355]

:[354]
pushi.e 1
pop.v.i self.swear

:[355]
push.v self.mystring_l
push.s "titty"@48948
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [357]

:[356]
pushi.e 1
pop.v.i self.swear

:[357]
push.v self.mystring_l
push.s "bepis"@48949
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [359]

:[358]
pushi.e 1
pop.v.i self.swear

:[359]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [380]

:[360]
push.v self.mystring_l
push.s "ふぁっく"@48950
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [362]

:[361]
pushi.e 1
pop.v.i self.swear

:[362]
push.v self.mystring_l
push.s "くそ"@48951
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [364]

:[363]
pushi.e 1
pop.v.i self.swear

:[364]
push.v self.mystring_l
push.s "うんこ"@48952
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [366]

:[365]
pushi.e 1
pop.v.i self.swear

:[366]
push.v self.mystring_l
push.s "うんち"@48953
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [368]

:[367]
pushi.e 1
pop.v.i self.swear

:[368]
push.v self.mystring_l
push.s "ちんこ"@48954
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [370]

:[369]
pushi.e 1
pop.v.i self.swear

:[370]
push.v self.mystring_l
push.s "ちんぽ"@48955
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [372]

:[371]
pushi.e 1
pop.v.i self.swear

:[372]
push.v self.mystring_l
push.s "ちんぽこ"@48956
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [374]

:[373]
pushi.e 1
pop.v.i self.swear

:[374]
push.v self.mystring_l
push.s "まんこ"@48957
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [376]

:[375]
pushi.e 1
pop.v.i self.swear

:[376]
push.v self.mystring_l
push.s "けつ"@48958
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [378]

:[377]
pushi.e 1
pop.v.i self.swear

:[378]
push.v self.mystring_l
push.s "おっぱい"@48959
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [380]

:[379]
pushi.e 1
pop.v.i self.swear

:[380]
push.v self.swear
pushi.e 1
cmp.i.v EQ
bf [382]

:[381]
push.s "obj_essaystuff_289"@12670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_essaystuff_290"@12672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[382]
pushi.e 0
pop.v.i self.done
push.v self.swear
pushi.e 1
cmp.i.v EQ
bf [384]

:[383]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [385]

:[384]
push.e 0

:[385]
bf [389]

:[386]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [388]

:[387]
pushi.e 12
pop.v.i self.curtype
pushi.e -150
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[388]
popenv [387]

:[389]
push.v self.spec
pushi.e 6
cmp.i.v EQ
bf [394]

:[390]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [394]

:[391]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [393]

:[392]
pushi.e 12
pop.v.i self.curtype
pushi.e 300
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[393]
popenv [392]

:[394]
push.v self.spec
pushi.e 5
cmp.i.v EQ
bf [396]

:[395]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [397]

:[396]
push.e 0

:[397]
bf [401]

:[398]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [400]

:[399]
pushi.e 12
pop.v.i self.curtype
pushi.e 250
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[400]
popenv [399]

:[401]
push.v self.spec
pushi.e 4
cmp.i.v EQ
bf [403]

:[402]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [404]

:[403]
push.e 0

:[404]
bf [408]

:[405]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [407]

:[406]
pushi.e 12
pop.v.i self.curtype
pushi.e -200
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[407]
popenv [406]

:[408]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [410]

:[409]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [411]

:[410]
push.e 0

:[411]
bf [415]

:[412]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [414]

:[413]
pushi.e 12
pop.v.i self.curtype
pushi.e 350
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[414]
popenv [413]

:[415]
push.v self.spec
pushi.e 2
cmp.i.v EQ
bt [417]

:[416]
push.v self.spec
pushi.e 3
cmp.i.v EQ
b [418]

:[417]
push.e 1

:[418]
bf [423]

:[419]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [423]

:[420]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [422]

:[421]
pushi.e 12
pop.v.i self.curtype
pushi.e 250
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[422]
popenv [421]

:[423]
push.v self.spec
pushi.e 3
cmp.i.v GT
bf [425]

:[424]
push.v self.spec
pushi.e 4
cmp.i.v LT
b [426]

:[425]
push.e 0

:[426]
bf [431]

:[427]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [431]

:[428]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [430]

:[429]
pushi.e 12
pop.v.i self.curtype
pushi.e 250
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[430]
popenv [429]

:[431]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [433]

:[432]
push.v self.spec
pushi.e 104
cmp.i.v EQ
b [434]

:[433]
push.e 0

:[434]
bf [438]

:[435]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [437]

:[436]
pushi.e 12
pop.v.i self.curtype
pushi.e 300
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[437]
popenv [436]

:[438]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [441]

:[439]
push.v self.spec
pushi.e 101
cmp.i.v GTE
bf [441]

:[440]
push.v self.spec
pushi.e 103
cmp.i.v LTE
b [442]

:[441]
push.e 0

:[442]
bf [446]

:[443]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [445]

:[444]
pushi.e 12
pop.v.i self.curtype
pushi.e 250
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[445]
popenv [444]

:[446]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [448]

:[447]
push.v self.beaut
pushi.e 0
cmp.i.v GT
b [449]

:[448]
push.e 0

:[449]
bf [478]

:[450]
push.v self.beaut
pushi.e 7
cmp.i.v GTE
bf [452]

:[451]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [453]

:[452]
push.e 0

:[453]
bf [457]

:[454]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [456]

:[455]
pushi.e 12
pop.v.i self.curtype
pushi.e 360
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[456]
popenv [455]

:[457]
push.v self.beaut
pushi.e 5
cmp.i.v GTE
bf [459]

:[458]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [460]

:[459]
push.e 0

:[460]
bf [464]

:[461]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [463]

:[462]
pushi.e 12
pop.v.i self.curtype
pushi.e 280
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[463]
popenv [462]

:[464]
push.v self.beaut
pushi.e 3
cmp.i.v GTE
bf [466]

:[465]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [467]

:[466]
push.e 0

:[467]
bf [471]

:[468]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [470]

:[469]
pushi.e 12
pop.v.i self.curtype
pushi.e 250
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[470]
popenv [469]

:[471]
push.v self.beaut
pushi.e 1
cmp.i.v GTE
bf [473]

:[472]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [474]

:[473]
push.e 0

:[474]
bf [478]

:[475]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [477]

:[476]
pushi.e 12
pop.v.i self.curtype
pushi.e 200
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[477]
popenv [476]

:[478]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [514]

:[479]
push.v self.leng
pushi.e 140
cmp.i.v GTE
bf [481]

:[480]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [482]

:[481]
push.e 0

:[482]
bf [486]

:[483]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [485]

:[484]
pushi.e 12
pop.v.i self.curtype
pushi.e 180
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[485]
popenv [484]

:[486]
push.v self.leng
pushi.e 90
cmp.i.v GTE
bf [488]

:[487]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [489]

:[488]
push.e 0

:[489]
bf [493]

:[490]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [492]

:[491]
pushi.e 12
pop.v.i self.curtype
pushi.e 150
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[492]
popenv [491]

:[493]
push.v self.leng
pushi.e 50
cmp.i.v GTE
bf [495]

:[494]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [496]

:[495]
push.e 0

:[496]
bf [500]

:[497]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [499]

:[498]
pushi.e 12
pop.v.i self.curtype
pushi.e 120
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[499]
popenv [498]

:[500]
push.v self.leng
pushi.e 13
cmp.i.v GTE
bf [502]

:[501]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [503]

:[502]
push.e 0

:[503]
bf [507]

:[504]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [506]

:[505]
pushi.e 12
pop.v.i self.curtype
pushi.e 100
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[506]
popenv [505]

:[507]
push.v self.leng
pushi.e 12
cmp.i.v LTE
bf [509]

:[508]
push.v self.done
pushi.e 0
cmp.i.v EQ
b [510]

:[509]
push.e 0

:[510]
bf [514]

:[511]
pushi.e 1
pop.v.i self.done
pushi.e 403
pushenv [513]

:[512]
pushi.e 12
pop.v.i self.curtype
pushi.e 80
pop.v.i self.essay
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[513]
popenv [512]

:[514]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "EssayNo"@48789
conv.s.v
push.s "MTT"@48790
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.essaynum
push.v self.essaynum
pushi.e 1
add.i.v
push.s "EssayNo"@48789
conv.s.v
push.s "MTT"@48790
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 784
pushenv [516]

:[515]
call.i instance_destroy(argc=0)
popz.v

:[516]
popenv [515]
pushi.e 4
pop.v.i self.con
pushi.e 51
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 188
conv.i.v
push.v 404.y
push.v 404.x
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[517]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [519]

:[518]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [520]

:[519]
push.e 0

:[520]
bf [end]

:[521]
pushi.e 0
pop.v.i 404.attacked
push.v self.blcon
conv.v.i
pushenv [523]

:[522]
call.i instance_destroy(argc=0)
popz.v

:[523]
popenv [522]
push.s "obj_essaystuff_510"@12674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
pushi.e -1
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v

:[end]