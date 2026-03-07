.localvar 0 arguments
.localvar 1 l_char 338

:[0]
push.s "..."@3215
pop.v.s self.demonx
pushbltn.v self.argument0
call.i string_lower(argc=1)
call.i string_to_hiragana(argc=1)
pop.v.v local.l_char
pushloc.v local.l_char
push.s "aaaaaa"@3220
cmp.s.v EQ
bt [2]

:[1]
pushloc.v local.l_char
push.s "ああああああ"@3221
cmp.s.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [8]

:[4]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [6]

:[5]
push.s "ほんとに#これでいいの…？"@3222
pop.v.s self.spec_m
b [7]

:[6]
push.s "Not very creative...?"@3223
pop.v.s self.spec_m

:[7]
b [end]

:[8]
pushloc.v local.l_char
push.s "asgore"@3224
cmp.s.v EQ
bt [10]

:[9]
pushloc.v local.l_char
push.s "あずごあ"@3225
cmp.s.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [16]

:[12]
pushi.e 0
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [14]

:[13]
push.s "そのなまえは　ダメだ。"@3226
pop.v.s self.spec_m
b [15]

:[14]
push.s "You cannot."@3227
pop.v.s self.spec_m

:[15]
b [end]

:[16]
pushloc.v local.l_char
push.s "toriel"@3228
cmp.s.v EQ
bt [18]

:[17]
pushloc.v local.l_char
push.s "とりえる"@3229
cmp.s.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [24]

:[20]
pushi.e 0
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [22]

:[21]
push.s "ちゃんと　なまえを#かんがえるのよ。"@3230
pop.v.s self.spec_m
b [23]

:[22]
push.s "I think you should#think of your own#name, my child."@3231
pop.v.s self.spec_m

:[23]
b [end]

:[24]
pushloc.v local.l_char
push.s "sans"@3232
cmp.s.v EQ
bt [26]

:[25]
pushloc.v local.l_char
push.s "さんず"@3233
cmp.s.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [32]

:[28]
pushi.e 0
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [30]

:[29]
push.s "ダメだぜ。"@3234
pop.v.s self.spec_m
b [31]

:[30]
push.s "nope."@3235
pop.v.s self.spec_m

:[31]
b [end]

:[32]
pushloc.v local.l_char
push.s "undyne"@3236
cmp.s.v EQ
bt [34]

:[33]
pushloc.v local.l_char
push.s "あんだいん"@3237
cmp.s.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [40]

:[36]
pushi.e 0
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [38]

:[37]
push.s "ひとの　なまえを#パクるな！"@3238
pop.v.s self.spec_m
b [39]

:[38]
push.s "Get your OWN name!"@3239
pop.v.s self.spec_m

:[39]
b [end]

:[40]
pushloc.v local.l_char
push.s "flowey"@3240
cmp.s.v EQ
bt [42]

:[41]
pushloc.v local.l_char
push.s "ふらうぃ"@3241
cmp.s.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [48]

:[44]
pushi.e 0
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [46]

:[45]
push.s "そのなまえは#ボクだけのもの。"@3242
pop.v.s self.spec_m
b [47]

:[46]
push.s "I already CHOSE#that name."@3243
pop.v.s self.spec_m

:[47]
b [end]

:[48]
pushloc.v local.l_char
push.s "chara"@3244
cmp.s.v EQ
bt [50]

:[49]
pushloc.v local.l_char
push.s "きゃら"@3245
cmp.s.v EQ
b [51]

:[50]
push.e 1

:[51]
bf [56]

:[52]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [54]

:[53]
push.s "ほんとうのなまえ。"@3246
pop.v.s self.spec_m
b [55]

:[54]
push.s "The true name."@3247
pop.v.s self.spec_m

:[55]
b [end]

:[56]
pushloc.v local.l_char
push.s "alphys"@3248
cmp.s.v EQ
bt [58]

:[57]
pushloc.v local.l_char
push.s "あるふぃー"@3249
cmp.s.v EQ
b [59]

:[58]
push.e 1

:[59]
bf [64]

:[60]
pushi.e 0
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [62]

:[61]
push.s "ダ…　ダメだよっ！"@3250
pop.v.s self.spec_m
b [63]

:[62]
push.s "D-don't do that."@3251
pop.v.s self.spec_m

:[63]
b [end]

:[64]
pushloc.v local.l_char
push.s "alphy"@3252
cmp.s.v EQ
bt [66]

:[65]
pushloc.v local.l_char
push.s "あるっち"@3253
cmp.s.v EQ
b [67]

:[66]
push.e 1

:[67]
bf [72]

:[68]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [70]

:[69]
push.s "う…　うん#いいよ…"@3254
pop.v.s self.spec_m
b [71]

:[70]
push.s "Uh... OK?"@3255
pop.v.s self.spec_m

:[71]
b [end]

:[72]
pushloc.v local.l_char
push.s "papyru"@3256
cmp.s.v EQ
bt [74]

:[73]
pushloc.v local.l_char
push.s "ぱぴるす"@3257
cmp.s.v EQ
b [75]

:[74]
push.e 1

:[75]
bf [80]

:[76]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [78]

:[77]
push.s "オレさまは#べつに#いいよッ！"@3258
pop.v.s self.spec_m
b [79]

:[78]
push.s "I'LL ALLOW IT!!!!"@3259
pop.v.s self.spec_m

:[79]
b [end]

:[80]
pushloc.v local.l_char
push.s "napsta"@3260
cmp.s.v EQ
bt [84]

:[81]
pushloc.v local.l_char
push.s "blooky"@3261
cmp.s.v EQ
bt [84]

:[82]
pushloc.v local.l_char
push.s "なぷすた"@3262
cmp.s.v EQ
bt [84]

:[83]
pushloc.v local.l_char
push.s "ぶるっち"@3263
cmp.s.v EQ
b [85]

:[84]
push.e 1

:[85]
bf [90]

:[86]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [88]

:[87]
push.s "…………#(とめるちからは　ない)"@3264
pop.v.s self.spec_m
b [89]

:[88]
push.s "...........#(They're powerless to#stop you.)"@3265
pop.v.s self.spec_m

:[89]
b [end]

:[90]
pushloc.v local.l_char
push.s "murder"@737
cmp.s.v EQ
bt [94]

:[91]
pushloc.v local.l_char
push.s "mercy"@24
cmp.s.v EQ
bt [94]

:[92]
pushloc.v local.l_char
push.s "ころす"@3266
cmp.s.v EQ
bt [94]

:[93]
pushloc.v local.l_char
push.s "みのがす"@3267
cmp.s.v EQ
b [95]

:[94]
push.e 1

:[95]
bf [100]

:[96]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [98]

:[97]
push.s "こんな　なまえで#いいんですか？"@3268
pop.v.s self.spec_m
b [99]

:[98]
push.s "That's a little on-#the nose, isn't it...?"@3269
pop.v.s self.spec_m

:[99]
b [end]

:[100]
pushloc.v local.l_char
push.s "asriel"@3270
cmp.s.v EQ
bt [102]

:[101]
pushloc.v local.l_char
push.s "あずりえる"@3271
cmp.s.v EQ
b [103]

:[102]
push.e 1

:[103]
bf [108]

:[104]
pushi.e 0
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [106]

:[105]
push.s "…"@3272
pop.v.s self.spec_m
b [107]

:[106]
push.s "..."@3215
pop.v.s self.spec_m

:[107]
b [end]

:[108]
pushloc.v local.l_char
push.s "catty"@3273
cmp.s.v EQ
bt [110]

:[109]
pushloc.v local.l_char
push.s "きゃってぃ"@3274
cmp.s.v EQ
b [111]

:[110]
push.e 1

:[111]
bf [116]

:[112]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [114]

:[113]
push.s "アリゲッティ！　みて！#アタシのなまえ#だしぃ～！"@3275
pop.v.s self.spec_m
b [115]

:[114]
push.s "Bratty! Bratty!#That's MY name!"@3276
pop.v.s self.spec_m

:[115]
b [end]

:[116]
pushloc.v local.l_char
push.s "bratty"@3277
cmp.s.v EQ
bt [118]

:[117]
pushloc.v local.l_char
push.s "ありげってぃ"@3278
cmp.s.v EQ
b [119]

:[118]
push.e 1

:[119]
bf [124]

:[120]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [122]

:[121]
push.s "べつに　いいけどぉ～？"@3279
pop.v.s self.spec_m
b [123]

:[122]
push.s "Like, OK I guess."@3280
pop.v.s self.spec_m

:[123]
b [end]

:[124]
pushloc.v local.l_char
push.s "mtt"@3281
cmp.s.v EQ
bt [129]

:[125]
pushloc.v local.l_char
push.s "metta"@3282
cmp.s.v EQ
bt [129]

:[126]
pushloc.v local.l_char
push.s "mett"@3283
cmp.s.v EQ
bt [129]

:[127]
pushloc.v local.l_char
push.s "めた"@3284
cmp.s.v EQ
bt [129]

:[128]
pushloc.v local.l_char
push.s "めたとん"@3285
cmp.s.v EQ
b [130]

:[129]
push.e 1

:[130]
bf [135]

:[131]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [133]

:[132]
push.s "おお！！キミ！！#せんでん　してくれるのかい？"@3286
pop.v.s self.spec_m
b [134]

:[133]
push.s "OOOOH!!! ARE YOU#PROMOTING MY BRAND?"@3287
pop.v.s self.spec_m

:[134]
b [end]

:[135]
pushloc.v local.l_char
push.s "gerson"@3288
cmp.s.v EQ
bt [137]

:[136]
pushloc.v local.l_char
push.s "がーそん"@3289
cmp.s.v EQ
b [138]

:[137]
push.e 1

:[138]
bf [143]

:[139]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [141]

:[140]
push.s "ワッハッハッ！#そりゃあいい！"@3290
pop.v.s self.spec_m
b [142]

:[141]
push.s "Wah ha ha! Why not?"@3291
pop.v.s self.spec_m

:[142]
b [end]

:[143]
pushloc.v local.l_char
push.s "shyren"@3292
cmp.s.v EQ
bt [145]

:[144]
pushloc.v local.l_char
push.s "しゃいれーん"@3293
cmp.s.v EQ
b [146]

:[145]
push.e 1

:[146]
bf [151]

:[147]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [149]

:[148]
push.s "…？"@3294
pop.v.s self.spec_m
b [150]

:[149]
push.s "...?"@3295
pop.v.s self.spec_m

:[150]
b [end]

:[151]
pushloc.v local.l_char
push.s "aaron"@3296
cmp.s.v EQ
bt [153]

:[152]
pushloc.v local.l_char
push.s "あーろん"@3297
cmp.s.v EQ
b [154]

:[153]
push.e 1

:[154]
bf [159]

:[155]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [157]

:[156]
push.s "このなまえで#よろしいですか？(^_–)☆ "@3298
pop.v.s self.spec_m
b [158]

:[157]
push.s "Is this name correct? ; )"@3299
pop.v.s self.spec_m

:[158]
b [end]

:[159]
pushloc.v local.l_char
push.s "Mahdii"@3300
cmp.s.v EQ
bt [161]

:[160]
pushloc.v local.l_char
push.s "てみー"@3301
cmp.s.v EQ
b [162]

:[161]
push.e 1

:[162]
bf [167]

:[163]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [165]

:[164]
push.s "ホィ！"@3302
pop.v.s self.spec_m
b [166]

:[165]
push.s "hOI!"@3303
pop.v.s self.spec_m

:[166]
b [end]

:[167]
pushloc.v local.l_char
push.s "woshua"@3304
cmp.s.v EQ
bt [169]

:[168]
pushloc.v local.l_char
push.s "うぉっしゅあ"@3305
cmp.s.v EQ
b [170]

:[169]
push.e 1

:[170]
bf [175]

:[171]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [173]

:[172]
push.s "せいけつな　なまえ。"@3306
pop.v.s self.spec_m
b [174]

:[173]
push.s "Clean name."@3307
pop.v.s self.spec_m

:[174]
b [end]

:[175]
pushloc.v local.l_char
push.s "jerry"@3308
cmp.s.v EQ
bt [177]

:[176]
pushloc.v local.l_char
push.s "じぇりー"@3309
cmp.s.v EQ
b [178]

:[177]
push.e 1

:[178]
bf [183]

:[179]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [181]

:[180]
push.s "ジェリー。"@3310
pop.v.s self.spec_m
b [182]

:[181]
push.s "Jerry."@3311
pop.v.s self.spec_m

:[182]
b [end]

:[183]
pushloc.v local.l_char
push.s "bpants"@3312
cmp.s.v EQ
bt [185]

:[184]
pushloc.v local.l_char
push.s "ばがぱん"@3313
cmp.s.v EQ
b [186]

:[185]
push.e 1

:[186]
bf [191]

:[187]
pushi.e 1
pop.v.i self.allow
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [189]

:[188]
push.s "…なまえの#ネタぎれ？"@3314
pop.v.s self.spec_m
b [190]

:[189]
push.s "You are really scraping the#bottom of the barrel."@3315
pop.v.s self.spec_m

:[190]
b [end]

:[191]
pushloc.v local.l_char
push.s "gaster"@3316
cmp.s.v EQ
bt [193]

:[192]
pushloc.v local.l_char
push.s "がすたー"@3317
cmp.s.v EQ
b [194]

:[193]
push.e 1

:[194]
bf [196]

:[195]
call.i game_restart(argc=0)
popz.v
b [end]

:[196]
pushi.e 1
pop.v.i self.allow
push.s "name_entry_confirm"@3318
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.spec_m

:[end]