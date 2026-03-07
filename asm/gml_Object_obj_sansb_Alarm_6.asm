.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.sm
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
push.s "del"@49418
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "%%%"@16
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 0
pop.v.i self.yoff
push.v self.hit_try
push.v self.hit_reached
cmp.v.v GT
bf [69]

:[1]
push.v self.hit_try
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_252"@23789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.hit_try
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_sansb_256"@23791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_257"@23793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[5]
push.v self.hit_try
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_sansb_262"@23795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.hit_try
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_sansb_266"@23797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_267"@23799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[9]
push.v self.hit_try
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_sansb_272"@23801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.hit_try
pushi.e 6
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_sansb_277"@23803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_278"@23805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[13]
push.v self.hit_try
pushi.e 7
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_284"@23807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.hit_try
pushi.e 8
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_290"@23809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.hit_try
pushi.e 9
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_296"@23811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_297"@23813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[19]
push.v self.hit_try
pushi.e 10
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_303"@23815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_304"@23817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[21]
push.v self.hit_try
pushi.e 11
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_310"@23819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_311"@23821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[23]
push.v self.hit_try
pushi.e 12
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_317"@23823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_318"@23825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[25]
push.v self.hit_try
pushi.e 13
cmp.i.v EQ
bf [31]

:[26]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.mypart1
conv.v.i
pushenv [28]

:[27]
pushi.e 2
pop.v.i self.sweat

:[28]
popenv [27]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.drama
pushi.e 0
pop.v.i 744.speed
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "SS"@49419
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.SS
pushi.e 0
conv.i.v
push.s "MP"@49420
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.MP
push.v self.MP
pushi.e 1
add.i.v
push.s "MP"@49420
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
push.s "obj_sansb_334"@23827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_335"@23829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_336"@23830
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_337"@23832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_338"@23834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_339"@23836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_340"@23838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansb_341"@23840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansb_342"@23842
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sansb_343"@23844
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_sansb_344"@23846
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_sansb_345"@23848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_sansb_346"@23850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_sansb_347"@23852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_sansb_348"@23854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_sansb_349"@23856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.v self.SS
pushi.e 0
cmp.i.v GT
bf [30]

:[29]
push.s "obj_sansb_353"@23857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_354"@23858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_355"@23859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_356"@23860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_357"@23862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_358"@23864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_359"@23866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[30]
push.i 999999
pop.v.i self.mercymod

:[31]
push.v self.hit_try
pushi.e 14
cmp.i.v EQ
bf [42]

:[32]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "SS"@49419
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.SS
pushi.e 0
conv.i.v
push.s "SS2"@49421
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.SS2
push.v self.SS
pushi.e 0
cmp.i.v GT
bf [34]

:[33]
push.v self.SS2
pushi.e 1
add.i.v
push.s "SS2"@49421
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[34]
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.drama
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
push.v self.d_music
call.i caster_free(argc=1)
popz.v

:[36]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sansb_380"@23868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_381"@23870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.SS
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
push.v self.SS2
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
push.s "obj_sansb_384"@23872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_385"@23874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_386"@23876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_387"@23878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_388"@23880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_389"@23882
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_390"@23884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[41]
push.i 999999
pop.v.i self.mercymod

:[42]
push.v self.hit_try
pushi.e 15
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_sansb_398"@23886
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_399"@23888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_400"@23890
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[44]
push.v self.hit_try
pushi.e 16
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_sansb_405"@23892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_406"@23894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[46]
push.v self.hit_try
pushi.e 17
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_sansb_411"@23896
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_412"@23898
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[48]
push.v self.hit_try
pushi.e 18
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_sansb_417"@23900
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_418"@23902
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_419"@23904
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_420"@23906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_421"@23908
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_422"@23910
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_423"@23911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[50]
push.v self.hit_try
pushi.e 19
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_sansb_427"@23913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.hit_try
pushi.e 20
cmp.i.v EQ
bf [56]

:[53]
push.v self.mypart1
conv.v.i
pushenv [55]

:[54]
pushi.e 1
pop.v.i self.sweat

:[55]
popenv [54]
push.s "obj_sansb_433"@23915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_434"@23917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[56]
push.v self.hit_try
pushi.e 21
cmp.i.v EQ
bf [60]

:[57]
push.v self.mypart1
conv.v.i
pushenv [59]

:[58]
pushi.e 1
pop.v.i self.sweat

:[59]
popenv [58]
push.s "obj_sansb_441"@23919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_442"@23921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[60]
push.v self.hit_try
pushi.e 22
cmp.i.v EQ
bf [64]

:[61]
push.v self.mypart1
conv.v.i
pushenv [63]

:[62]
pushi.e 2
pop.v.i self.sweat

:[63]
popenv [62]
push.s "obj_sansb_448"@23923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_449"@23925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_450"@23927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[64]
push.v self.hit_try
pushi.e 23
cmp.i.v EQ
bf [68]

:[65]
push.v self.mypart1
conv.v.i
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.sweat

:[67]
popenv [66]
push.s "obj_sansb_456"@23929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_457"@23931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_458"@23933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[68]
push.v self.hit_try
pop.v.v self.hit_reached

:[69]
push.v self.mercy_death
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 1
pushi.e -5
pushi.e 272
pop.v.i [array]global.flag
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 4
pop.v.i global.faceemotion
push.s "obj_sansb_477"@23934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_478"@23936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_479"@23938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_480"@23940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_481"@23942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_482"@23944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_483"@23946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansb_484"@23948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansb_485"@23950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sansb_486"@23952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "SS"@49419
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.SS
push.v self.SS
pushi.e 1
add.i.v
push.s "SS"@49419
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v

:[71]
pushi.e 109
pop.v.i global.typer
pushi.e 35
pop.v.i global.border
pushi.e 0
pop.v.i self.a_choose
push.v self.hit_try
pushi.e 13
cmp.i.v LT
bf [101]

:[72]
pushi.e 1
pushi.e -5
pushi.e 271
pop.v.i [array]global.flag
push.v self.part
pop.v.v self.a_choose
push.v self.part
pushi.e 13
cmp.i.v GTE
bf [74]

:[73]
pushi.e 10
pop.v.i self.a_choose

:[74]
push.v self.a_choose
pushi.e 0
cmp.i.v EQ
bf [76]

:[75]
pushi.e 35
pop.v.i global.border

:[76]
push.v self.a_choose
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 35
pop.v.i global.border

:[78]
push.v self.a_choose
pushi.e 2
cmp.i.v EQ
bf [80]

:[79]
pushi.e 35
pop.v.i global.border

:[80]
push.v self.a_choose
pushi.e 3
cmp.i.v EQ
bf [82]

:[81]
pushi.e 35
pop.v.i global.border

:[82]
push.v self.a_choose
pushi.e 4
cmp.i.v EQ
bf [84]

:[83]
pushi.e 35
pop.v.i global.border

:[84]
push.v self.a_choose
pushi.e 5
cmp.i.v EQ
bf [86]

:[85]
pushi.e 35
pop.v.i global.border

:[86]
push.v self.a_choose
pushi.e 6
cmp.i.v EQ
bf [88]

:[87]
pushi.e 39
pop.v.i global.border

:[88]
push.v self.a_choose
pushi.e 7
cmp.i.v EQ
bf [90]

:[89]
pushi.e 35
pop.v.i global.border

:[90]
push.v self.a_choose
pushi.e 8
cmp.i.v EQ
bf [92]

:[91]
pushi.e 39
pop.v.i global.border

:[92]
push.v self.a_choose
pushi.e 9
cmp.i.v EQ
bf [94]

:[93]
pushi.e 35
pop.v.i global.border

:[94]
push.v self.a_choose
pushi.e 10
cmp.i.v EQ
bf [96]

:[95]
pushi.e 35
pop.v.i global.border

:[96]
push.v self.a_choose
pushi.e 11
cmp.i.v EQ
bf [98]

:[97]
pushi.e 35
pop.v.i global.border

:[98]
push.v self.a_choose
pushi.e 12
cmp.i.v EQ
bf [100]

:[99]
pushi.e 35
pop.v.i global.border

:[100]
pushi.e 2
pop.v.i 744.movement
pushi.e 52
pop.v.i 744.sprite_index

:[101]
push.v self.hit_try
pushi.e 14
cmp.i.v GTE
bf [104]

:[102]
push.v self.hit_try
pushi.e 23
cmp.i.v LT
bf [104]

:[103]
push.v self.nx
pushi.e 1
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [131]

:[106]
pushi.e 1
pop.v.i 744.movement
pushi.e 46
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i self.c_choose
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
pushi.e 37
pop.v.i global.border

:[108]
push.v self.part
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e 0
pop.v.i global.border

:[110]
push.v self.part
pushi.e 2
cmp.i.v EQ
bf [112]

:[111]
pushi.e 36
pop.v.i global.border

:[112]
push.v self.part
pushi.e 3
cmp.i.v EQ
bf [114]

:[113]
pushi.e 36
pop.v.i global.border

:[114]
push.v self.part
pushi.e 4
cmp.i.v EQ
bf [116]

:[115]
pushi.e 37
pop.v.i global.border

:[116]
push.v self.part
pushi.e 5
cmp.i.v EQ
bf [118]

:[117]
pushi.e 36
pop.v.i global.border

:[118]
push.v self.part
pushi.e 6
cmp.i.v EQ
bf [120]

:[119]
pushi.e 0
pop.v.i global.border

:[120]
push.v self.part
pushi.e 7
cmp.i.v EQ
bf [122]

:[121]
pushi.e 36
pop.v.i global.border

:[122]
push.v self.part
pushi.e 8
cmp.i.v GTE
bf [124]

:[123]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=3)
pop.v.v self.c_choose

:[124]
push.v self.c_choose
pushi.e 3
cmp.i.v EQ
bf [126]

:[125]
pushi.e 37
pop.v.i global.border

:[126]
push.v self.c_choose
pushi.e 1
cmp.i.v EQ
bt [128]

:[127]
push.v self.c_choose
pushi.e 2
cmp.i.v EQ
b [129]

:[128]
push.e 1

:[129]
bf [131]

:[130]
pushi.e 36
pop.v.i global.border

:[131]
push.v self.hit_try
pushi.e 23
cmp.i.v EQ
bf [133]

:[132]
pushi.e 36
pop.v.i global.border
pushi.e 1
pop.v.i 744.movement
pushi.e 46
pop.v.i 744.sprite_index

:[133]
push.v self.mercy_death
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e 38
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 0
pop.v.i 744.speed

:[135]
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
push.v 744.movement
pushi.e 2
cmp.i.v EQ
bf [139]

:[136]
pushi.e 744
pushenv [138]

:[137]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.jumpstage

:[138]
popenv [137]

:[139]
pushglb.v global.border
pushi.e 39
cmp.i.v EQ
bf [141]

:[140]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 70
sub.i.v
pop.v.v 744.y

:[141]
push.v self.mercy_death
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
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
pushi.e 46
pop.v.i 744.sprite_index
pushi.e 1
pop.v.i 744.movement

:[143]
pushi.e 506
pushenv [145]

:[144]
pushi.e 1
pop.v.i self.terminate

:[145]
popenv [144]
pushi.e 505
pushenv [147]

:[146]
pushi.e 1
pop.v.i self.terminate

:[147]
popenv [146]
pushi.e 511
pushenv [149]

:[148]
call.i instance_destroy(argc=0)
popz.v

:[149]
popenv [148]
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 250
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.i
pop.v.v self.yoff
push.v self.yoff
pushi.e 0
cmp.i.v LT
bf [151]

:[150]
pushi.e 0
pop.v.i self.yoff

:[151]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
pushi.e 187
conv.i.v
push.v self.y
push.v self.yoff
sub.v.v
push.v self.x
pushi.e 120
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
b [154]

:[153]
pushi.e 188
conv.i.v
push.v self.y
push.v self.yoff
sub.v.v
push.v self.x
pushi.e 120
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon

:[154]
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
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e -5
pushi.e 0
push.v [array]global.msg
push.s "del"@49418
cmp.s.v EQ
bf [end]

:[155]
push.v self.blconwd
conv.v.i
pushenv [157]

:[156]
call.i instance_destroy(argc=0)
popz.v

:[157]
popenv [156]
push.v self.blcon
conv.v.i
pushenv [159]

:[158]
call.i instance_destroy(argc=0)
popz.v

:[159]
popenv [158]

:[end]