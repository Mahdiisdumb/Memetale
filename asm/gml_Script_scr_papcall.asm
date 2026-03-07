.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.dontplay
pushi.e 0
pop.v.i self.noresponse
pushi.e 0
pop.v.i self.tired
push.s "scr_papcall_7"@3651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_8"@3652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.u
pushi.e -5
pushi.e 465
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.u

:[2]
pushbltn.v self.room
dup.v 0
pushi.e 44
cmp.i.v EQ
bt [125]

:[3]
dup.v 0
pushi.e 45
cmp.i.v EQ
bt [128]

:[4]
dup.v 0
pushi.e 46
cmp.i.v EQ
bt [131]

:[5]
dup.v 0
pushi.e 47
cmp.i.v EQ
bt [134]

:[6]
dup.v 0
pushi.e 48
cmp.i.v EQ
bt [137]

:[7]
dup.v 0
pushi.e 49
cmp.i.v EQ
bt [140]

:[8]
dup.v 0
pushi.e 50
cmp.i.v EQ
bt [143]

:[9]
dup.v 0
pushi.e 51
cmp.i.v EQ
bt [146]

:[10]
dup.v 0
pushi.e 52
cmp.i.v EQ
bt [149]

:[11]
dup.v 0
pushi.e 53
cmp.i.v EQ
bt [154]

:[12]
dup.v 0
pushi.e 54
cmp.i.v EQ
bt [157]

:[13]
dup.v 0
pushi.e 55
cmp.i.v EQ
bt [160]

:[14]
dup.v 0
pushi.e 56
cmp.i.v EQ
bt [163]

:[15]
dup.v 0
pushi.e 57
cmp.i.v EQ
bt [170]

:[16]
dup.v 0
pushi.e 58
cmp.i.v EQ
bt [173]

:[17]
dup.v 0
pushi.e 59
cmp.i.v EQ
bt [176]

:[18]
dup.v 0
pushi.e 60
cmp.i.v EQ
bt [179]

:[19]
dup.v 0
pushi.e 61
cmp.i.v EQ
bt [182]

:[20]
dup.v 0
pushi.e 62
cmp.i.v EQ
bt [185]

:[21]
dup.v 0
pushi.e 63
cmp.i.v EQ
bt [188]

:[22]
dup.v 0
pushi.e 64
cmp.i.v EQ
bt [191]

:[23]
dup.v 0
pushi.e 65
cmp.i.v EQ
bt [194]

:[24]
dup.v 0
pushi.e 66
cmp.i.v EQ
bt [197]

:[25]
dup.v 0
pushi.e 67
cmp.i.v EQ
bt [200]

:[26]
dup.v 0
pushi.e 68
cmp.i.v EQ
bt [203]

:[27]
dup.v 0
pushi.e 69
cmp.i.v EQ
bt [206]

:[28]
dup.v 0
pushi.e 71
cmp.i.v EQ
bt [211]

:[29]
dup.v 0
pushi.e 73
cmp.i.v EQ
bt [217]

:[30]
dup.v 0
pushi.e 74
cmp.i.v EQ
bt [223]

:[31]
dup.v 0
pushi.e 77
cmp.i.v EQ
bt [229]

:[32]
dup.v 0
pushi.e 76
cmp.i.v EQ
bt [235]

:[33]
dup.v 0
pushi.e 81
cmp.i.v EQ
bt [238]

:[34]
dup.v 0
pushi.e 82
cmp.i.v EQ
bt [244]

:[35]
dup.v 0
pushi.e 83
cmp.i.v EQ
bt [250]

:[36]
dup.v 0
pushi.e 84
cmp.i.v EQ
bt [256]

:[37]
dup.v 0
pushi.e 85
cmp.i.v EQ
bt [264]

:[38]
dup.v 0
pushi.e 86
cmp.i.v EQ
bt [272]

:[39]
dup.v 0
pushi.e 87
cmp.i.v EQ
bt [280]

:[40]
dup.v 0
pushi.e 88
cmp.i.v EQ
bt [286]

:[41]
dup.v 0
pushi.e 89
cmp.i.v EQ
bt [292]

:[42]
dup.v 0
pushi.e 90
cmp.i.v EQ
bt [295]

:[43]
dup.v 0
pushi.e 91
cmp.i.v EQ
bt [301]

:[44]
dup.v 0
pushi.e 92
cmp.i.v EQ
bt [309]

:[45]
dup.v 0
pushi.e 93
cmp.i.v EQ
bt [317]

:[46]
dup.v 0
pushi.e 94
cmp.i.v EQ
bt [325]

:[47]
dup.v 0
pushi.e 95
cmp.i.v EQ
bt [328]

:[48]
dup.v 0
pushi.e 96
cmp.i.v EQ
bt [336]

:[49]
dup.v 0
pushi.e 98
cmp.i.v EQ
bt [342]

:[50]
dup.v 0
pushi.e 99
cmp.i.v EQ
bt [348]

:[51]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [354]

:[52]
dup.v 0
pushi.e 101
cmp.i.v EQ
bt [360]

:[53]
dup.v 0
pushi.e 102
cmp.i.v EQ
bt [366]

:[54]
dup.v 0
pushi.e 103
cmp.i.v EQ
bt [372]

:[55]
dup.v 0
pushi.e 104
cmp.i.v EQ
bt [378]

:[56]
dup.v 0
pushi.e 105
cmp.i.v EQ
bt [384]

:[57]
dup.v 0
pushi.e 106
cmp.i.v EQ
bt [390]

:[58]
dup.v 0
pushi.e 107
cmp.i.v EQ
bt [398]

:[59]
dup.v 0
pushi.e 108
cmp.i.v EQ
bt [404]

:[60]
dup.v 0
pushi.e 109
cmp.i.v EQ
bt [410]

:[61]
dup.v 0
pushi.e 113
cmp.i.v EQ
bt [416]

:[62]
dup.v 0
pushi.e 114
cmp.i.v EQ
bt [424]

:[63]
dup.v 0
pushi.e 115
cmp.i.v EQ
bt [432]

:[64]
dup.v 0
pushi.e 116
cmp.i.v EQ
bt [440]

:[65]
dup.v 0
pushi.e 117
cmp.i.v EQ
bt [446]

:[66]
dup.v 0
pushi.e 119
cmp.i.v EQ
bt [458]

:[67]
dup.v 0
pushi.e 120
cmp.i.v EQ
bt [464]

:[68]
dup.v 0
pushi.e 121
cmp.i.v EQ
bt [470]

:[69]
dup.v 0
pushi.e 122
cmp.i.v EQ
bt [476]

:[70]
dup.v 0
pushi.e 124
cmp.i.v EQ
bt [482]

:[71]
dup.v 0
pushi.e 125
cmp.i.v EQ
bt [488]

:[72]
dup.v 0
pushi.e 126
cmp.i.v EQ
bt [494]

:[73]
dup.v 0
pushi.e 127
cmp.i.v EQ
bt [500]

:[74]
dup.v 0
pushi.e 129
cmp.i.v EQ
bt [506]

:[75]
dup.v 0
pushi.e 130
cmp.i.v EQ
bt [512]

:[76]
dup.v 0
pushi.e 131
cmp.i.v EQ
bt [523]

:[77]
dup.v 0
pushi.e 132
cmp.i.v EQ
bt [532]

:[78]
dup.v 0
pushi.e 133
cmp.i.v EQ
bt [549]

:[79]
dup.v 0
pushi.e 134
cmp.i.v EQ
bt [558]

:[80]
dup.v 0
pushi.e 136
cmp.i.v EQ
bt [569]

:[81]
dup.v 0
pushi.e 137
cmp.i.v EQ
bt [580]

:[82]
dup.v 0
pushi.e 138
cmp.i.v EQ
bt [591]

:[83]
dup.v 0
pushi.e 141
cmp.i.v EQ
bt [602]

:[84]
dup.v 0
pushi.e 142
cmp.i.v EQ
bt [610]

:[85]
dup.v 0
pushi.e 143
cmp.i.v EQ
bt [616]

:[86]
dup.v 0
pushi.e 140
cmp.i.v EQ
bt [622]

:[87]
dup.v 0
pushi.e 144
cmp.i.v EQ
bt [628]

:[88]
dup.v 0
pushi.e 145
cmp.i.v EQ
bt [634]

:[89]
dup.v 0
pushi.e 147
cmp.i.v EQ
bt [640]

:[90]
dup.v 0
pushi.e 149
cmp.i.v EQ
bt [652]

:[91]
dup.v 0
pushi.e 151
cmp.i.v EQ
bt [658]

:[92]
dup.v 0
pushi.e 153
cmp.i.v EQ
bt [661]

:[93]
dup.v 0
pushi.e 158
cmp.i.v EQ
bt [667]

:[94]
dup.v 0
pushi.e 162
cmp.i.v EQ
bt [676]

:[95]
dup.v 0
pushi.e 163
cmp.i.v EQ
bt [682]

:[96]
dup.v 0
pushi.e 165
cmp.i.v EQ
bt [688]

:[97]
dup.v 0
pushi.e 166
cmp.i.v EQ
bt [694]

:[98]
dup.v 0
pushi.e 167
cmp.i.v EQ
bt [702]

:[99]
dup.v 0
pushi.e 170
cmp.i.v EQ
bt [708]

:[100]
dup.v 0
pushi.e 171
cmp.i.v EQ
bt [711]

:[101]
dup.v 0
pushi.e 172
cmp.i.v EQ
bt [717]

:[102]
dup.v 0
pushi.e 164
cmp.i.v EQ
bt [723]

:[103]
dup.v 0
pushi.e 179
cmp.i.v EQ
bt [729]

:[104]
dup.v 0
pushi.e 181
cmp.i.v EQ
bt [737]

:[105]
dup.v 0
pushi.e 183
cmp.i.v EQ
bt [746]

:[106]
dup.v 0
pushi.e 184
cmp.i.v EQ
bt [752]

:[107]
dup.v 0
pushi.e 185
cmp.i.v EQ
bt [758]

:[108]
dup.v 0
pushi.e 186
cmp.i.v EQ
bt [764]

:[109]
dup.v 0
pushi.e 214
cmp.i.v EQ
bt [770]

:[110]
dup.v 0
pushi.e 156
cmp.i.v EQ
bt [776]

:[111]
dup.v 0
pushi.e 157
cmp.i.v EQ
bt [784]

:[112]
dup.v 0
pushi.e 168
cmp.i.v EQ
bt [790]

:[113]
dup.v 0
pushi.e 169
cmp.i.v EQ
bt [798]

:[114]
dup.v 0
pushi.e 187
cmp.i.v EQ
bt [806]

:[115]
dup.v 0
pushi.e 159
cmp.i.v EQ
bt [812]

:[116]
dup.v 0
pushi.e 161
cmp.i.v EQ
bt [818]

:[117]
dup.v 0
pushi.e 180
cmp.i.v EQ
bt [824]

:[118]
dup.v 0
pushi.e 188
cmp.i.v EQ
bt [831]

:[119]
dup.v 0
pushi.e 178
cmp.i.v EQ
bt [837]

:[120]
dup.v 0
pushi.e 176
cmp.i.v EQ
bt [843]

:[121]
dup.v 0
pushi.e 177
cmp.i.v EQ
bt [851]

:[122]
dup.v 0
pushi.e 139
cmp.i.v EQ
bt [859]

:[123]
b [870]

:[124]
b [871]

:[125]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_17"@3653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_18"@3654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_19"@3655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_20"@3656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [127]

:[126]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_24"@3657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_25"@3658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[127]
b [871]

:[128]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_31"@3659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_32"@3660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_33"@3661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_34"@3662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [130]

:[129]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_39"@3663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_40"@3664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[130]
b [871]

:[131]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_46"@3665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_47"@3666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [133]

:[132]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_52"@3667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[133]
b [871]

:[134]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_58"@3668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_59"@3669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [136]

:[135]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_65"@3670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[136]
b [871]

:[137]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_71"@3671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_72"@3672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_73"@3673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [139]

:[138]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_79"@3674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[139]
b [871]

:[140]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_85"@3675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_86"@3676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_87"@3677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [142]

:[141]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_93"@3678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[142]
b [871]

:[143]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_100"@3679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_101"@3680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_102"@3681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [145]

:[144]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_108"@3682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[145]
b [871]

:[146]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_114"@3683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_115"@3684
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [148]

:[147]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_121"@3685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[148]
b [871]

:[149]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_127"@3686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_128"@3687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 291
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [151]

:[150]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_133"@3688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_134"@3689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_135"@3690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[151]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [153]

:[152]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_141"@3691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[153]
b [871]

:[154]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_149"@3692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_150"@3693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_151"@3694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_152"@3695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [156]

:[155]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_157"@3696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_158"@3697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[156]
b [871]

:[157]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_166"@3698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_167"@3699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_168"@3700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [159]

:[158]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_173"@3701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_174"@3702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_175"@3703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[159]
b [871]

:[160]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_182"@3704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_183"@3705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [162]

:[161]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_188"@3706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[162]
b [871]

:[163]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_195"@3707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_196"@3708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 62
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [165]

:[164]
push.s "scr_papcall_199"@3709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_200"@3710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[165]
pushi.e -5
pushi.e 62
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [167]

:[166]
push.s "scr_papcall_204"@3711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_205"@3712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[167]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [169]

:[168]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_211"@3713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[169]
b [871]

:[170]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_218"@3714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_219"@3715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_220"@3716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_221"@3717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_222"@3718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_223"@3719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [172]

:[171]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_228"@3720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[172]
b [871]

:[173]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_234"@3721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_235"@3722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_236"@3723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [175]

:[174]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_241"@3724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[175]
b [871]

:[176]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_248"@3725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_249"@3726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_250"@3727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [178]

:[177]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_255"@3728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[178]
b [871]

:[179]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_262"@3729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_263"@3730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_264"@3731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_265"@3732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_266"@3733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [181]

:[180]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_271"@3734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_272"@3735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[181]
b [871]

:[182]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_278"@3736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_279"@3737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_280"@3738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_281"@3739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_282"@3740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [184]

:[183]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_287"@3741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[184]
b [871]

:[185]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_293"@3742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_294"@3743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_295"@3744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [187]

:[186]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_300"@3745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[187]
b [871]

:[188]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_306"@3746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_307"@3747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_308"@3748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_309"@3749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [190]

:[189]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_314"@3750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[190]
b [871]

:[191]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_321"@3751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_322"@3752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_323"@3753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_324"@3754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [193]

:[192]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_329"@3755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[193]
b [871]

:[194]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_336"@3756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_337"@3757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_338"@3758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [196]

:[195]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_343"@3759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[196]
b [871]

:[197]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_349"@3760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_350"@3761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_351"@3762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_352"@3763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [199]

:[198]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_357"@3764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[199]
b [871]

:[200]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_363"@3765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_364"@3766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_365"@3767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [202]

:[201]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_370"@3768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[202]
b [871]

:[203]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_376"@3769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_377"@3770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [205]

:[204]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_382"@3771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[205]
b [871]

:[206]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_389"@3772
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_390"@3773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [208]

:[207]
push.s "scr_papcall_394"@3774
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_395"@3775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_397"@3776
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_398"@3777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_400"@3778
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_401"@3779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_403"@3780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "scr_papcall_404"@3781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[208]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [210]

:[209]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_410"@3782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[210]
b [871]

:[211]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_416"@3783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_417"@3784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_418"@3785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [213]

:[212]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_423"@3786
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_424"@3787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[213]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [216]

:[214]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_430"@3788
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_431"@3789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_432"@3790
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_433"@3791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_434"@3792
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [216]

:[215]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_439"@3793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[216]
b [871]

:[217]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_448"@3794
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_449"@3795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_450"@3796
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [219]

:[218]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_455"@3797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[219]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [222]

:[220]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_461"@3798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_463"@3799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_464"@3800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_465"@3801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_467"@3802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [222]

:[221]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_472"@3803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_474"@3804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_475"@3805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_476"@3806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[222]
b [871]

:[223]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_487"@3807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_488"@3808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [225]

:[224]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_493"@3809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[225]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [228]

:[226]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_499"@3810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_500"@3811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_501"@3812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_502"@3813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [228]

:[227]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_507"@3814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[228]
b [871]

:[229]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_516"@3815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_517"@3816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_518"@3817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_519"@3818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_520"@3819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_521"@3820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_522"@3821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_523"@3822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_524"@3823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_525"@3824
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "scr_papcall_526"@3825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [231]

:[230]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_531"@3826
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[231]
pushi.e -5
pushi.e 283
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [234]

:[232]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_537"@3827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_538"@3828
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_539"@3829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [234]

:[233]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_544"@3830
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[234]
b [871]

:[235]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_554"@3831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_555"@3832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_556"@3833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_557"@3834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_558"@3835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [237]

:[236]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_563"@3836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[237]
b [871]

:[238]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_572"@3837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_573"@3838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [240]

:[239]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_578"@3839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[240]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [243]

:[241]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_584"@3840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_586"@3841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_587"@3842
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_588"@3843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_590"@3844
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_592"@3845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 11
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_594"@3846
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_596"@3847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [243]

:[242]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_601"@3848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[243]
b [871]

:[244]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_610"@3849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_611"@3850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [246]

:[245]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_616"@3851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[246]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [249]

:[247]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_622"@3852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_624"@3853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_626"@3854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_628"@3855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 9
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_630"@3856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [249]

:[248]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_635"@3857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_637"@3858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_639"@3859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_640"@3860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_642"@3861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[249]
b [871]

:[250]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_660"@3862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_661"@3863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_662"@3864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_663"@3865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [252]

:[251]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_668"@3866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[252]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [255]

:[253]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_674"@3867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_675"@3868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_676"@3869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_677"@3870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_678"@3871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [255]

:[254]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_683"@3872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_684"@3873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[255]
b [871]

:[256]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_693"@3874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_694"@3875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_695"@3876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [258]

:[257]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_700"@3877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[258]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [261]

:[259]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_706"@3878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_707"@3879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_708"@3880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [261]

:[260]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_714"@3881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_715"@3882
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[261]
pushglb.v global.plot
pushi.e 106
cmp.i.v LT
bf [263]

:[262]
push.s "scr_papcall_722"@3883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_723"@3884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[263]
b [871]

:[264]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_731"@3885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_732"@3886
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [266]

:[265]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_737"@3887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[266]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [269]

:[267]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_743"@3888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_744"@3889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_745"@3890
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [269]

:[268]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_750"@3891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_751"@3892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[269]
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
bf [271]

:[270]
push.s "scr_papcall_757"@3893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_758"@3894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[271]
b [871]

:[272]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_766"@3895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_767"@3896
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [274]

:[273]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_772"@3897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_773"@3898
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[274]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [277]

:[275]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_779"@3899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_780"@3900
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_781"@3901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [277]

:[276]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_786"@3902
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[277]
pushglb.v global.plot
pushi.e 106
cmp.i.v LT
bf [279]

:[278]
push.s "scr_papcall_792"@3903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_793"@3904
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[279]
b [871]

:[280]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_801"@3905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_802"@3906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_803"@3907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [282]

:[281]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_808"@3908
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[282]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [285]

:[283]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_814"@3909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_815"@3910
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_816"@3911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [285]

:[284]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_821"@3912
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[285]
b [871]

:[286]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_830"@3913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_831"@3914
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_832"@3915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [288]

:[287]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_837"@3916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[288]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [291]

:[289]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_843"@3917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_844"@3918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_845"@3919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_846"@3920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [291]

:[290]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_851"@3921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[291]
b [871]

:[292]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_861"@3922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [294]

:[293]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_866"@3923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[294]
b [871]

:[295]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_876"@3924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_877"@3925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_878"@3926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_879"@3927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [297]

:[296]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_885"@3928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[297]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [300]

:[298]
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_891"@3929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_892"@3930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_893"@3931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_895"@3932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_896"@3933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_898"@3934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [300]

:[299]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_903"@3935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_904"@3936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[300]
b [871]

:[301]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_915"@3937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_916"@3938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_917"@3939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [303]

:[302]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_922"@3940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[303]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [306]

:[304]
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_928"@3941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_929"@3942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_930"@3943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_931"@3944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [306]

:[305]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_936"@3945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[306]
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
bf [308]

:[307]
push.s "scr_papcall_942"@3946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_943"@3947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[308]
b [871]

:[309]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_950"@3948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_951"@3949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [311]

:[310]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_956"@3950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[311]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [314]

:[312]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_962"@3951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_963"@3952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [314]

:[313]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_968"@3953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[314]
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
bf [316]

:[315]
push.s "scr_papcall_974"@3954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_975"@3955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[316]
b [871]

:[317]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_982"@3956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_983"@3957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [319]

:[318]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_988"@3958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[319]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [322]

:[320]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_994"@3959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_995"@3960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [322]

:[321]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1000"@3961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[322]
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
bf [324]

:[323]
push.s "scr_papcall_1006"@3962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_1007"@3963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[324]
b [871]

:[325]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1014"@3964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [327]

:[326]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1019"@3965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[327]
b [871]

:[328]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1029"@3966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1030"@3967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1031"@3968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1024
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [330]

:[329]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1036"@3969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1037"@3970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1038"@3971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1039"@3972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[330]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [332]

:[331]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1046"@3973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[332]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [335]

:[333]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1052"@3974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1053"@3975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1054"@3976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1055"@3977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1056"@3978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [335]

:[334]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1062"@3979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[335]
b [871]

:[336]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1071"@3980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1072"@3981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_1074"@3982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1076"@3983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [338]

:[337]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1081"@3984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_1083"@3985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1085"@3986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[338]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [341]

:[339]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1097"@3987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1098"@3988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1099"@3989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [341]

:[340]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1104"@3990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[341]
b [871]

:[342]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1113"@3991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1114"@3992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [344]

:[343]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1120"@3993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[344]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [347]

:[345]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1126"@3994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1127"@3995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1128"@3996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1129"@3997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1130"@3998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [347]

:[346]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1136"@3999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1137"@4000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[347]
b [871]

:[348]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1146"@4001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1147"@4002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1148"@4003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1149"@4004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [350]

:[349]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1155"@4005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[350]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [353]

:[351]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1161"@4006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1162"@4007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1163"@4008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1164"@4009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [353]

:[352]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1170"@4010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1171"@4011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[353]
b [871]

:[354]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1180"@4012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [356]

:[355]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1186"@4013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[356]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [359]

:[357]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1192"@4014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [359]

:[358]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1198"@4015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[359]
b [871]

:[360]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1206"@4016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1207"@4017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1208"@4018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [362]

:[361]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1214"@4019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[362]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [365]

:[363]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1220"@4020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1221"@4021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1222"@4022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1223"@4023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [365]

:[364]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1229"@4024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[365]
b [871]

:[366]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1239"@4025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1240"@4026
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [368]

:[367]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1246"@4027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[368]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [371]

:[369]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1252"@4028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1253"@4029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1254"@4030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [371]

:[370]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1259"@4031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[371]
b [871]

:[372]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1269"@4032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1270"@4033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [374]

:[373]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1276"@4034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1277"@4035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1278"@4036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[374]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [377]

:[375]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1291"@4037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1292"@4038
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1293"@4039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [377]

:[376]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1298"@4040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[377]
b [871]

:[378]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1308"@4041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 86
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [380]

:[379]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1313"@4042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1314"@4043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[380]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [383]

:[381]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1320"@4044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1321"@4045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 86
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [383]

:[382]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1326"@4046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1327"@4047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[383]
b [871]

:[384]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1336"@4048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1337"@4049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [386]

:[385]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1342"@4050
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[386]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [389]

:[387]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1348"@4051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1349"@4052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1350"@4053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [389]

:[388]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1355"@4054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[389]
b [871]

:[390]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1365"@4055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1366"@4056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1117
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [392]

:[391]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1372"@4057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1373"@4058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1374"@4059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[392]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [394]

:[393]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1380"@4060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[394]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [397]

:[395]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1386"@4061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1387"@4062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [397]

:[396]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1392"@4063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[397]
b [871]

:[398]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1402"@4064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1403"@4065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [400]

:[399]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1409"@4066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[400]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [403]

:[401]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1415"@4067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1416"@4068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1417"@4069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [403]

:[402]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1422"@4070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[403]
b [871]

:[404]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1431"@4071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [406]

:[405]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1436"@4072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[406]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [409]

:[407]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1442"@4073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1443"@4074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [409]

:[408]
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1448"@4075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[409]
b [871]

:[410]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1458"@4076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [412]

:[411]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1463"@4077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[412]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [415]

:[413]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1469"@4078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1470"@4079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1471"@4080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1472"@4081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [415]

:[414]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1477"@4082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[415]
b [871]

:[416]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1488"@4083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1489"@4084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [418]

:[417]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1494"@4085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[418]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [421]

:[419]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1500"@4086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1501"@4087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1502"@4088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [421]

:[420]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1507"@4089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[421]
pushglb.v global.plot
pushi.e 116
cmp.i.v LT
bf [423]

:[422]
push.s "scr_papcall_1513"@4090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_1514"@4091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[423]
b [871]

:[424]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1522"@4092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1523"@4093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1524"@4094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [426]

:[425]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1529"@4095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[426]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [429]

:[427]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1535"@4096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1536"@4097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1537"@4098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1538"@4099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1539"@4100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_1540"@4101
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_1541"@4102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_1542"@4103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_1543"@4104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_1544"@4105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "scr_papcall_1545"@4106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [429]

:[428]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1550"@4107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[429]
pushglb.v global.plot
pushi.e 116
cmp.i.v LT
bf [431]

:[430]
push.s "scr_papcall_1557"@4108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_1558"@4109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[431]
b [871]

:[432]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1566"@4110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1567"@4111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1568"@4112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1569"@4113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1570"@4114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [434]

:[433]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1575"@4115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[434]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [437]

:[435]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1581"@4116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1582"@4117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1583"@4118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1584"@4119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [437]

:[436]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1590"@4120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[437]
pushglb.v global.plot
pushi.e 116
cmp.i.v LT
bf [439]

:[438]
push.s "scr_papcall_1596"@4121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_1597"@4122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[439]
b [871]

:[440]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1604"@4123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1605"@4124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1606"@4125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1607"@4126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1608"@4127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_1609"@4128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [442]

:[441]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1614"@4129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[442]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [445]

:[443]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1620"@4130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1621"@4131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1623"@4132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1625"@4133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [445]

:[444]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1632"@4134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1634"@4135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[445]
b [871]

:[446]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1641"@4136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1642"@4137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [448]

:[447]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1647"@4138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1648"@4139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[448]
pushi.e 1028
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [450]

:[449]
push.s "scr_papcall_1653"@4140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1654"@4141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[450]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [457]

:[451]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 5
cmp.i.v LT
bf [455]

:[452]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1662"@4142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1663"@4143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1664"@4144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1666"@4145
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_1667"@4146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1669"@4147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 10
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1671"@4148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1673"@4149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "scr_papcall_1674"@4150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [454]

:[453]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1680"@4151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1682"@4152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1684"@4153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_1685"@4154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1687"@4155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[454]
b [457]

:[455]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1694"@4156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1695"@4157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1696"@4158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [457]

:[456]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1701"@4159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1702"@4160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[457]
b [871]

:[458]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1714"@4161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1715"@4162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1716"@4163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [460]

:[459]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1721"@4164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[460]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [463]

:[461]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1727"@4165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1728"@4166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1729"@4167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1730"@4168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [463]

:[462]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1736"@4169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[463]
b [871]

:[464]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1745"@4170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1746"@4171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1747"@4172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1748"@4173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [466]

:[465]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1754"@4174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[466]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [469]

:[467]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1760"@4175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1761"@4176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1762"@4177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1763"@4178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1764"@4179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_1765"@4180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [469]

:[468]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1771"@4181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1772"@4182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[469]
b [871]

:[470]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1781"@4183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1782"@4184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1783"@4185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1784"@4186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [472]

:[471]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1791"@4187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1792"@4188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1793"@4189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[472]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [475]

:[473]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1799"@4190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1800"@4191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1801"@4192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1802"@4193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1804"@4194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1806"@4195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1808"@4196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [475]

:[474]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1815"@4197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[475]
b [871]

:[476]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1825"@4198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1826"@4199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1827"@4200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [478]

:[477]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1832"@4201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[478]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [481]

:[479]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1838"@4202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1839"@4203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1840"@4204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1841"@4205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1842"@4206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_1843"@4207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_1844"@4208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [481]

:[480]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1850"@4209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[481]
b [871]

:[482]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1859"@4210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1860"@4211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1861"@4212
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1862"@4213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1863"@4214
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [484]

:[483]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1868"@4215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[484]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [487]

:[485]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1874"@4216
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1875"@4217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1876"@4218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1877"@4219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_1878"@4220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [487]

:[486]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1883"@4221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[487]
b [871]

:[488]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1892"@4222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [490]

:[489]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1897"@4223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[490]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [493]

:[491]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1903"@4224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1904"@4225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1905"@4226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [493]

:[492]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1910"@4227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[493]
b [871]

:[494]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1919"@4228
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1920"@4229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [496]

:[495]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1925"@4230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[496]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [499]

:[497]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1931"@4231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1932"@4232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1933"@4233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1934"@4234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [499]

:[498]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1939"@4235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[499]
b [871]

:[500]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1948"@4236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1949"@4237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [502]

:[501]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1954"@4238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[502]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [505]

:[503]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1960"@4239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1961"@4240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1962"@4241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_1963"@4242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [505]

:[504]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1968"@4243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[505]
b [871]

:[506]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1977"@4244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1978"@4245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1979"@4246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [508]

:[507]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_1984"@4247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[508]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [511]

:[509]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1990"@4248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_1991"@4249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_1992"@4250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [511]

:[510]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_1997"@4251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[511]
b [871]

:[512]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2007"@4252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2008"@4253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [514]

:[513]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2013"@4254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[514]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [517]

:[515]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2019"@4255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2020"@4256
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2021"@4257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2023"@4258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2025"@4259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2027"@4260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_2028"@4261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 12
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2030"@4262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [517]

:[516]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2035"@4263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2037"@4264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[517]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [519]

:[518]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [520]

:[519]
push.e 1

:[520]
bf [522]

:[521]
pushi.e 1
pop.v.i self.noresponse

:[522]
b [871]

:[523]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2051"@4265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2052"@4266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [526]

:[524]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2058"@4267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2059"@4268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [526]

:[525]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2064"@4269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[526]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [528]

:[527]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [529]

:[528]
push.e 1

:[529]
bf [531]

:[530]
pushi.e 1
pop.v.i self.noresponse

:[531]
b [871]

:[532]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2078"@4270
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2079"@4271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2080"@4272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2081"@4273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [534]

:[533]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2088"@4274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[534]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [543]

:[535]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2094"@4275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2095"@4276
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [537]

:[536]
push.s "scr_papcall_2098"@4277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2099"@4278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2100"@4279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2101"@4280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[537]
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [539]

:[538]
push.s "scr_papcall_2105"@4281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2106"@4282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2107"@4283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2108"@4284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[539]
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [541]

:[540]
push.s "scr_papcall_2112"@4285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2113"@4286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2114"@4287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2115"@4288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_2116"@4289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[541]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [543]

:[542]
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2122"@4290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[543]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [545]

:[544]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [546]

:[545]
push.e 1

:[546]
bf [548]

:[547]
pushi.e 1
pop.v.i self.noresponse

:[548]
b [871]

:[549]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2136"@4291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2137"@4292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2138"@4293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [552]

:[550]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2144"@4294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2145"@4295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2147"@4296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2149"@4297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2151"@4298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_2152"@4299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 11
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2154"@4300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "scr_papcall_2155"@4301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "scr_papcall_2156"@4302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 15
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2158"@4303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [552]

:[551]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2163"@4304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2165"@4305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2167"@4306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2169"@4307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[552]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [554]

:[553]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [555]

:[554]
push.e 1

:[555]
bf [557]

:[556]
pushi.e 1
pop.v.i self.noresponse

:[557]
b [871]

:[558]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2185"@4308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2186"@4309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2187"@4310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [560]

:[559]
push.s "scr_papcall_2191"@4311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[560]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [563]

:[561]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2198"@4312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2199"@4313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2200"@4314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2201"@4315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2202"@4316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_2203"@4317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_2204"@4318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2206"@4319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 11
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2208"@4320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2210"@4321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 15
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2212"@4322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [563]

:[562]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2217"@4323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2218"@4324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[563]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [565]

:[564]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [566]

:[565]
push.e 1

:[566]
bf [568]

:[567]
pushi.e 1
pop.v.i self.noresponse

:[568]
b [871]

:[569]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2234"@4325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2235"@4326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2236"@4327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2237"@4328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [571]

:[570]
push.s "scr_papcall_2241"@4329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[571]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [574]

:[572]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2248"@4330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2249"@4331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2251"@4332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2253"@4333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2255"@4334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2257"@4335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 12
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2259"@4336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [574]

:[573]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2265"@4337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2267"@4338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2269"@4339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2271"@4340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[574]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [576]

:[575]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [577]

:[576]
push.e 1

:[577]
bf [579]

:[578]
pushi.e 1
pop.v.i self.noresponse

:[579]
b [871]

:[580]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2285"@4341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2286"@4342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_2288"@4343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2290"@4344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [582]

:[581]
push.s "scr_papcall_2295"@4345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[582]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [585]

:[583]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2302"@4346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2303"@4347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2305"@4348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2306"@4349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_2307"@4350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2309"@4351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_2310"@4352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 11
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2312"@4353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [585]

:[584]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2319"@4354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2321"@4355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2323"@4356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_2324"@4357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[585]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [587]

:[586]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [588]

:[587]
push.e 1

:[588]
bf [590]

:[589]
pushi.e 1
pop.v.i self.noresponse

:[590]
b [871]

:[591]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2339"@4358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2340"@4359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [593]

:[592]
push.s "scr_papcall_2345"@4360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2346"@4361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2347"@4362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[593]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [596]

:[594]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2354"@4363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2355"@4364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2356"@4365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2357"@4366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2358"@4367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [596]

:[595]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2363"@4368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[596]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bt [598]

:[597]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [599]

:[598]
push.e 1

:[599]
bf [601]

:[600]
pushi.e 1
pop.v.i self.noresponse

:[601]
b [871]

:[602]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2377"@4369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2378"@4370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2379"@4371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [604]

:[603]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2384"@4372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2385"@4373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2386"@4374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2387"@4375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[604]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [607]

:[605]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2393"@4376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2394"@4377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2395"@4378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2396"@4379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2397"@4380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [607]

:[606]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2402"@4381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[607]
pushglb.v global.plot
pushi.e 125
cmp.i.v LTE
bf [609]

:[608]
push.s "scr_papcall_2408"@4382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[609]
b [871]

:[610]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2416"@4383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2417"@4384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [612]

:[611]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2422"@4385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[612]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [615]

:[613]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2428"@4386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2429"@4387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2430"@4388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2431"@4389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [615]

:[614]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2436"@4390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[615]
b [871]

:[616]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2445"@4391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2446"@4392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2447"@4393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2448"@4394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [618]

:[617]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2453"@4395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[618]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [621]

:[619]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2459"@4396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2461"@4397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2463"@4398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2465"@4399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [621]

:[620]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2470"@4400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[621]
b [871]

:[622]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2479"@4401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2480"@4402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2481"@4403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [624]

:[623]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2486"@4404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[624]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [627]

:[625]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2492"@4405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2494"@4406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2496"@4407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2498"@4408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [627]

:[626]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2503"@4409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[627]
b [871]

:[628]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2512"@4410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2513"@4411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2514"@4412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2515"@4413
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [630]

:[629]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2520"@4414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[630]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [633]

:[631]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2526"@4415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2527"@4416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2529"@4417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2531"@4418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [633]

:[632]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2536"@4419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[633]
b [871]

:[634]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2546"@4420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2547"@4421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [636]

:[635]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2552"@4422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[636]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [639]

:[637]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2558"@4423
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2559"@4424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2560"@4425
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2561"@4426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [639]

:[638]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2566"@4427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[639]
b [871]

:[640]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2576"@4428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2577"@4429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2578"@4430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2579"@4431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2580"@4432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [642]

:[641]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2585"@4433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[642]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [644]

:[643]
pushglb.v global.plot
pushi.e 131
cmp.i.v GTE
b [645]

:[644]
push.e 0

:[645]
bf [651]

:[646]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2591"@4434
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2592"@4435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2594"@4436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2595"@4437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_2596"@4438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2598"@4439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_2599"@4440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2601"@4441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e -5
pushi.e 470
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [648]

:[647]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2607"@4442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[648]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [650]

:[649]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2614"@4443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2616"@4444
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2617"@4445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[650]
pushi.e 1
pushi.e -5
pushi.e 470
pop.v.i [array]global.flag

:[651]
b [871]

:[652]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2637"@4446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2638"@4447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2639"@4448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [654]

:[653]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2645"@4449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[654]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [657]

:[655]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2651"@4450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2652"@4451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2653"@4452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2654"@4453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2655"@4454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_2656"@4455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [657]

:[656]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2661"@4456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[657]
b [871]

:[658]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2671"@4457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2672"@4458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_2674"@4459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2675"@4460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2677"@4461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [660]

:[659]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2682"@4462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_2684"@4463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2686"@4464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[660]
b [871]

:[661]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2697"@4465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2698"@4466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2699"@4467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [663]

:[662]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2704"@4468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[663]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [666]

:[664]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2710"@4469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2712"@4470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2714"@4471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2716"@4472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2718"@4473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 11
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2720"@4474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2722"@4475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 15
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2724"@4476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 17
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2726"@4477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "scr_papcall_2727"@4478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [666]

:[665]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2732"@4479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[666]
b [871]

:[667]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2742"@4480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2743"@4481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2744"@4482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2745"@4483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [669]

:[668]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2750"@4484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[669]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [672]

:[670]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2756"@4485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2758"@4486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2760"@4487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2762"@4488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [672]

:[671]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2767"@4489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[672]
pushi.e 1024
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [675]

:[673]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2774"@4490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2775"@4491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2776"@4492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2777"@4493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [675]

:[674]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2782"@4494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[675]
b [871]

:[676]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2796"@4495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2797"@4496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2798"@4497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [678]

:[677]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2803"@4498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[678]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [681]

:[679]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2809"@4499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2811"@4500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2813"@4501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2815"@4502
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_2816"@4503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_2817"@4504
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 11
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2819"@4505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 13
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2821"@4506
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [681]

:[680]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2826"@4507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2828"@4508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[681]
b [871]

:[682]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2836"@4509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2837"@4510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2838"@4511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2839"@4512
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [684]

:[683]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2844"@4513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[684]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [687]

:[685]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2850"@4514
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2851"@4515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2853"@4516
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2855"@4517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_2856"@4518
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_2857"@4519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_2858"@4520
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_2859"@4521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "scr_papcall_2860"@4522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2862"@4523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 15
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2864"@4524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "scr_papcall_2865"@4525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 18
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2867"@4526
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [687]

:[686]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2872"@4527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2873"@4528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[687]
b [871]

:[688]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2883"@4529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2884"@4530
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2885"@4531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [690]

:[689]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2890"@4532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[690]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [693]

:[691]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2896"@4533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2897"@4534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2898"@4535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2899"@4536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [693]

:[692]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2904"@4537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[693]
b [871]

:[694]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2912"@4538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2913"@4539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [696]

:[695]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2918"@4540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[696]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [699]

:[697]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2924"@4541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2925"@4542
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2926"@4543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2927"@4544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2928"@4545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_2929"@4546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [699]

:[698]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2934"@4547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[699]
pushglb.v global.plot
pushi.e 160
cmp.i.v LTE
bf [701]

:[700]
push.s "scr_papcall_2940"@4548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[701]
b [871]

:[702]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2948"@4549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2949"@4550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [704]

:[703]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2954"@4551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[704]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [707]

:[705]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2960"@4552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2962"@4553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2963"@4554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [707]

:[706]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_2968"@4555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[707]
b [871]

:[708]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2980"@4556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2981"@4557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2982"@4558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_2983"@4559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_2984"@4560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [710]

:[709]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2989"@4561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[710]
b [871]

:[711]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_2997"@4562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_2998"@4563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_2999"@4564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [713]

:[712]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3004"@4565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[713]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [716]

:[714]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3010"@4566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3012"@4567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3013"@4568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3014"@4569
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3016"@4570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [716]

:[715]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3021"@4571
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[716]
b [871]

:[717]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3030"@4572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3031"@4573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [719]

:[718]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3036"@4574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[719]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [722]

:[720]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3042"@4575
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3044"@4576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3046"@4577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_3047"@4578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3049"@4579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [722]

:[721]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3054"@4580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[722]
b [871]

:[723]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3063"@4581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3064"@4582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [725]

:[724]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3069"@4583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[725]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [728]

:[726]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3075"@4584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3077"@4585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3079"@4586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3081"@4587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3083"@4588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_3085"@4589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3087"@4590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [728]

:[727]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3092"@4591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[728]
b [871]

:[729]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3102"@4592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3103"@4593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3104"@4594
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [731]

:[730]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3109"@4595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[731]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [734]

:[732]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3115"@4596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3117"@4597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3118"@4598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3120"@4599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_3121"@4600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 9
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3123"@4601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [734]

:[733]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3128"@4602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[734]
pushglb.v global.plot
pushi.e 166
cmp.i.v LTE
bf [736]

:[735]
push.s "scr_papcall_3135"@4603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[736]
b [871]

:[737]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3144"@4604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3145"@4605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3146"@4606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3147"@4607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [739]

:[738]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3152"@4608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[739]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [745]

:[740]
pushi.e -5
pushi.e 402
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [742]

:[741]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3160"@4609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3161"@4610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3162"@4611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3163"@4612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
b [743]

:[742]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3169"@4613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3170"@4614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3171"@4615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3172"@4616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3173"@4617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[743]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [745]

:[744]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3179"@4618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3180"@4619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[745]
b [871]

:[746]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3187"@4620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3188"@4621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [748]

:[747]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3194"@4622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[748]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [751]

:[749]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3200"@4623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3202"@4624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3204"@4625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3206"@4626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [751]

:[750]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3211"@4627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3213"@4628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3214"@4629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[751]
b [871]

:[752]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3224"@4630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3225"@4631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [754]

:[753]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3231"@4632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[754]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [757]

:[755]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3237"@4633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3238"@4634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3240"@4635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3241"@4636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 6
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3243"@4637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_3244"@4638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_3245"@4639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_3246"@4640
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [757]

:[756]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3251"@4641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[757]
b [871]

:[758]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3261"@4642
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3262"@4643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3263"@4644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3264"@4645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3265"@4646
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [760]

:[759]
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3270"@4647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[760]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [763]

:[761]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3276"@4648
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3278"@4649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3280"@4650
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3282"@4651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3284"@4652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3286"@4653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3288"@4654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3290"@4655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 17
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3292"@4656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [763]

:[762]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3297"@4657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3299"@4658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3301"@4659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3303"@4660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 9
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3305"@4661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3307"@4662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "scr_papcall_3308"@4663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 14
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3310"@4664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 16
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3312"@4665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg

:[763]
b [871]

:[764]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3320"@4666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3321"@4667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3322"@4668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [766]

:[765]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3327"@4669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[766]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [769]

:[767]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3333"@4670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3335"@4671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3336"@4672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3338"@4673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3340"@4674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 10
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3342"@4675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 12
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3344"@4676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 14
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3346"@4677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 16
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3348"@4678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [769]

:[768]
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3353"@4679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3355"@4680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3356"@4681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[769]
b [871]

:[770]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3364"@4682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3365"@4683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3366"@4684
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3367"@4685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [772]

:[771]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3372"@4686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[772]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [775]

:[773]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3378"@4687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3379"@4688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3381"@4689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3383"@4690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3385"@4691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [775]

:[774]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3390"@4692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3392"@4693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[775]
b [871]

:[776]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3401"@4694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3402"@4695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3403"@4696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3404"@4697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [778]

:[777]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3409"@4698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[778]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [781]

:[779]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3415"@4699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3416"@4700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3418"@4701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3420"@4702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3422"@4703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [781]

:[780]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3427"@4704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[781]
pushi.e 35
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [783]

:[782]
push.s "scr_papcall_3434"@4705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[783]
b [871]

:[784]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3441"@4706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3442"@4707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3443"@4708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3444"@4709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [786]

:[785]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3449"@4710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[786]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [789]

:[787]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3455"@4711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3456"@4712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3458"@4713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3459"@4714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3461"@4715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_3462"@4716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_3464"@4717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3466"@4718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [789]

:[788]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_3471"@4719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3473"@4720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[789]
b [871]

:[790]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3482"@4721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3483"@4722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3484"@4723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3485"@4724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3486"@4725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [792]

:[791]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3491"@4726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3492"@4727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[792]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [795]

:[793]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3499"@4728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3500"@4729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3502"@4730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3503"@4731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3505"@4732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3507"@4733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_3508"@4734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "scr_papcall_3509"@4735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 13
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3511"@4736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [795]

:[794]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3516"@4737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3517"@4738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3518"@4739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3520"@4740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3522"@4741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_3523"@4742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3525"@4743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg

:[795]
pushi.e 37
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [797]

:[796]
push.s "scr_papcall_3533"@4744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[797]
b [871]

:[798]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3540"@4745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3541"@4746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3542"@4747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3543"@4748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3544"@4749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [800]

:[799]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3549"@4750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[800]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [803]

:[801]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3555"@4751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3556"@4752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3557"@4753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3559"@4754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_3560"@4755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3562"@4756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 10
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3564"@4757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3566"@4758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 14
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3568"@4759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [803]

:[802]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3573"@4760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3574"@4761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[803]
pushi.e 36
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [805]

:[804]
push.s "scr_papcall_3582"@4762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[805]
b [871]

:[806]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3589"@4763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3590"@4764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3591"@4765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3592"@4766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [808]

:[807]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3597"@4767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[808]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [811]

:[809]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3603"@4768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3604"@4769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3606"@4770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3607"@4771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [811]

:[810]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3612"@4772
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3613"@4773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3615"@4774
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[811]
b [871]

:[812]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3625"@4775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3626"@4776
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3627"@4777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3628"@4778
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3629"@4779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [814]

:[813]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3634"@4780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3635"@4781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[814]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [817]

:[815]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3641"@4782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3643"@4783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3644"@4784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3645"@4785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3647"@4786
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3649"@4787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_3650"@4788
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [817]

:[816]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3655"@4789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3656"@4790
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3658"@4791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3659"@4792
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3661"@4793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[817]
b [871]

:[818]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3671"@4794
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3672"@4795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [820]

:[819]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3677"@4796
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[820]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [823]

:[821]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3683"@4797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3685"@4798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3687"@4799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3689"@4800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3691"@4801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 11
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3693"@4802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [823]

:[822]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3700"@4803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[823]
b [871]

:[824]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3710"@4804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 278
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [826]

:[825]
push.s "scr_papcall_3713"@4805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3714"@4806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3715"@4807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
b [827]

:[826]
push.s "scr_papcall_3719"@4808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3720"@4809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3721"@4810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3722"@4811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_3723"@4812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_3724"@4813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[827]
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [830]

:[828]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3730"@4814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 278
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [830]

:[829]
push.s "scr_papcall_3731"@4815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[830]
b [871]

:[831]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3738"@4816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3739"@4817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3740"@4818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3741"@4819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3742"@4820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_3743"@4821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_3744"@4822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [833]

:[832]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3749"@4823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[833]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [836]

:[834]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3755"@4824
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3757"@4825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3758"@4826
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3760"@4827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_3761"@4828
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 9
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3763"@4829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_3764"@4830
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "scr_papcall_3765"@4831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3767"@4832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 15
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3769"@4833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [836]

:[835]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3775"@4834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[836]
b [871]

:[837]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3785"@4835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3786"@4836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3787"@4837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [839]

:[838]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3792"@4838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3793"@4839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[839]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [842]

:[840]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3799"@4840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3800"@4841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3802"@4842
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3804"@4843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3806"@4844
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3808"@4845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 12
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3810"@4846
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 14
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3812"@4847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 16
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3814"@4848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [842]

:[841]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3820"@4849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3822"@4850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3824"@4851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3826"@4852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[842]
b [871]

:[843]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3836"@4853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3837"@4854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3838"@4855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [845]

:[844]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3844"@4856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[845]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [848]

:[846]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3850"@4857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3852"@4858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3854"@4859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3856"@4860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_3857"@4861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3859"@4862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 12
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3861"@4863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 14
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3863"@4864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 16
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3865"@4865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [848]

:[847]
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3872"@4866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3874"@4867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3875"@4868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[848]
pushglb.v global.plot
pushi.e 165
cmp.i.v LT
bf [850]

:[849]
push.s "scr_papcall_3880"@4869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[850]
b [871]

:[851]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3887"@4870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3888"@4871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3889"@4872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3890"@4873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3891"@4874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [853]

:[852]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3897"@4875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[853]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [856]

:[854]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3903"@4876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3905"@4877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_3907"@4878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3909"@4879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_3910"@4880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [856]

:[855]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3918"@4881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3919"@4882
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[856]
pushglb.v global.plot
pushi.e 165
cmp.i.v LT
bf [858]

:[857]
push.s "scr_papcall_3924"@4883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[858]
b [871]

:[859]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3931"@4884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_3933"@4885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3935"@4886
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_3937"@4887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3939"@4888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_3940"@4889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "scr_papcall_3942"@4890
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "scr_papcall_3943"@4891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [861]

:[860]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3948"@4892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[861]
push.v self.u
pushi.e 1
cmp.i.v EQ
bf [867]

:[862]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3956"@4893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3957"@4894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3959"@4895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3960"@4896
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3962"@4897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_3963"@4898
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3965"@4899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 12
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3967"@4900
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [864]

:[863]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3972"@4901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3973"@4902
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3975"@4903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3977"@4904
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_3978"@4905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_3979"@4906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 10
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3981"@4907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_3983"@4908
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 14
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3985"@4909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg

:[864]
pushi.e 1308
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [867]

:[865]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_3993"@4910
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_papcall_3994"@4911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_papcall_3995"@4912
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_papcall_3996"@4913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_papcall_3997"@4914
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_papcall_3998"@4915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_papcall_3999"@4916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_papcall_4000"@4917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_papcall_4001"@4918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "scr_papcall_4002"@4919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "scr_papcall_4003"@4920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "scr_papcall_4004"@4921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "scr_papcall_4005"@4922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "scr_papcall_4006"@4923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "scr_papcall_4007"@4924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 401
pop.v.i [array]global.flag
pushi.e -5
pushi.e 462
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [867]

:[866]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "scr_papcall_4013"@4925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[867]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [869]

:[868]
push.s "scr_papcall_4019"@4926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[869]
b [871]

:[870]
push.s "scr_papcall_4026"@4927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[871]
popz.v
push.v self.noresponse
pushi.e 1
cmp.i.v EQ
bf [873]

:[872]
push.s "scr_papcall_4033"@4928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_papcall_4034"@4929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[873]
push.v self.tired
pushi.e 1
cmp.i.v EQ
bf [875]

:[874]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "scr_papcall_4040"@4930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[875]
push.v self.dontplay
pushi.e 0
cmp.i.v EQ
bf [877]

:[876]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v

:[877]
pushi.e -5
pushi.e 462
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[end]