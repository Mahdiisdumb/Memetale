.localvar 0 arguments
.localvar 1 control 904
.localvar 2 type 905
.localvar 3 button 906

:[0]
pushbltn.v self.argument0
pop.v.v local.control
pushbltn.v self.argument1
pop.v.v local.type
pushloc.v local.control
push.s "A"@6301
cmp.s.v EQ
bf [6]

:[1]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [3]

:[2]
pushi.e 886
conv.i.v
ret.v

:[3]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [5]

:[4]
pushi.e 896
conv.i.v
ret.v

:[5]
pushi.e -4
conv.i.v
ret.v

:[6]
pushloc.v local.control
push.s "D"@6302
cmp.s.v EQ
bf [12]

:[7]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [9]

:[8]
pushi.e 887
conv.i.v
ret.v

:[9]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [11]

:[10]
pushi.e 897
conv.i.v
ret.v

:[11]
pushi.e -4
conv.i.v
ret.v

:[12]
pushi.e -4
pop.v.i local.button
pushloc.v local.control
push.s "Z"@6304
cmp.s.v EQ
bf [14]

:[13]
pushglb.v global.button0
pop.v.v local.button

:[14]
pushloc.v local.control
push.s "X"@6305
cmp.s.v EQ
bf [16]

:[15]
pushglb.v global.button1
pop.v.v local.button

:[16]
pushloc.v local.control
push.s "C"@6306
cmp.s.v EQ
bf [18]

:[17]
pushglb.v global.button2
pop.v.v local.button

:[18]
pushloc.v local.button
push.i 32769
cmp.i.v EQ
bf [27]

:[19]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [23]

:[20]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 899
conv.i.v
ret.v

:[22]
pushi.e 875
conv.i.v
ret.v

:[23]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [27]

:[24]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 911
conv.i.v
ret.v

:[26]
pushi.e 889
conv.i.v
ret.v

:[27]
pushloc.v local.button
push.i 32770
cmp.i.v EQ
bf [36]

:[28]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [32]

:[29]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 898
conv.i.v
ret.v

:[31]
pushi.e 874
conv.i.v
ret.v

:[32]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [36]

:[33]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 910
conv.i.v
ret.v

:[35]
pushi.e 888
conv.i.v
ret.v

:[36]
pushloc.v local.button
push.i 32771
cmp.i.v EQ
bf [45]

:[37]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [41]

:[38]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 900
conv.i.v
ret.v

:[40]
pushi.e 876
conv.i.v
ret.v

:[41]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [45]

:[42]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 912
conv.i.v
ret.v

:[44]
pushi.e 890
conv.i.v
ret.v

:[45]
pushloc.v local.button
push.i 32772
cmp.i.v EQ
bf [54]

:[46]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [50]

:[47]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 901
conv.i.v
ret.v

:[49]
pushi.e 877
conv.i.v
ret.v

:[50]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [54]

:[51]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
pushi.e 913
conv.i.v
ret.v

:[53]
pushi.e 891
conv.i.v
ret.v

:[54]
pushloc.v local.button
push.i 32773
cmp.i.v EQ
bf [63]

:[55]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [59]

:[56]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 902
conv.i.v
ret.v

:[58]
pushi.e 878
conv.i.v
ret.v

:[59]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [63]

:[60]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e 914
conv.i.v
ret.v

:[62]
pushi.e 892
conv.i.v
ret.v

:[63]
pushloc.v local.button
push.i 32775
cmp.i.v EQ
bf [68]

:[64]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [68]

:[65]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 903
conv.i.v
ret.v

:[67]
pushi.e 879
conv.i.v
ret.v

:[68]
pushloc.v local.button
push.i 32774
cmp.i.v EQ
bf [77]

:[69]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [73]

:[70]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 905
conv.i.v
ret.v

:[72]
pushi.e 881
conv.i.v
ret.v

:[73]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [77]

:[74]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 915
conv.i.v
ret.v

:[76]
pushi.e 893
conv.i.v
ret.v

:[77]
pushloc.v local.button
push.i 32776
cmp.i.v EQ
bf [82]

:[78]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [82]

:[79]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e 906
conv.i.v
ret.v

:[81]
pushi.e 882
conv.i.v
ret.v

:[82]
pushloc.v local.button
push.i 32779
cmp.i.v EQ
bf [87]

:[83]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [87]

:[84]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 904
conv.i.v
ret.v

:[86]
pushi.e 880
conv.i.v
ret.v

:[87]
pushloc.v local.button
push.i 32780
cmp.i.v EQ
bf [92]

:[88]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [92]

:[89]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
pushi.e 907
conv.i.v
ret.v

:[91]
pushi.e 883
conv.i.v
ret.v

:[92]
pushloc.v local.button
push.i 32777
cmp.i.v EQ
bf [101]

:[93]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [97]

:[94]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 909
conv.i.v
ret.v

:[96]
pushi.e 885
conv.i.v
ret.v

:[97]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [101]

:[98]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 916
conv.i.v
ret.v

:[100]
pushi.e 894
conv.i.v
ret.v

:[101]
pushloc.v local.button
push.i 32778
cmp.i.v EQ
bf [110]

:[102]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [106]

:[103]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 908
conv.i.v
ret.v

:[105]
pushi.e 884
conv.i.v
ret.v

:[106]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [110]

:[107]
pushloc.v local.type
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 917
conv.i.v
ret.v

:[109]
pushi.e 895
conv.i.v
ret.v

:[110]
pushi.e -4
conv.i.v
ret.v

:[end]