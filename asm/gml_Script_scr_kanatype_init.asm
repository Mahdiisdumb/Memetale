.localvar 0 arguments

:[0]
push.s "kanatype_lookup_4ch"@47128
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [2]

:[1]
exit.i

:[2]
call.i ds_map_create(argc=0)
pop.v.v global.kanatype_lookup_4ch
push.s "っ"@47127
conv.s.v
push.s "ltsu"@47135
conv.s.v
pushglb.v global.kanatype_lookup_4ch
call.i ds_map_set(argc=3)
popz.v
push.s "っ"@47127
conv.s.v
push.s "xtsu"@47136
conv.s.v
pushglb.v global.kanatype_lookup_4ch
call.i ds_map_set(argc=3)
popz.v
call.i ds_map_create(argc=0)
pop.v.v global.kanatype_lookup_3ch
push.s "びゃ"@47137
conv.s.v
push.s "bya"@47138
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びぃ"@47139
conv.s.v
push.s "byi"@47140
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びゅ"@47141
conv.s.v
push.s "byu"@47142
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びぇ"@47143
conv.s.v
push.s "bye"@47144
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びょ"@47145
conv.s.v
push.s "byo"@47146
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちゃ"@47147
conv.s.v
push.s "cha"@47148
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ち"@47149
conv.s.v
push.s "chi"@47150
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちゅ"@47151
conv.s.v
push.s "chu"@47152
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちぇ"@47153
conv.s.v
push.s "che"@47154
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちょ"@47155
conv.s.v
push.s "cho"@47156
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちゃ"@47147
conv.s.v
push.s "cya"@47157
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちぃ"@47158
conv.s.v
push.s "cyi"@47159
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちゅ"@47151
conv.s.v
push.s "cyu"@47160
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちぇ"@47153
conv.s.v
push.s "cye"@47161
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちょ"@47155
conv.s.v
push.s "cyo"@47162
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "でゃ"@47163
conv.s.v
push.s "dha"@47164
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "でぃ"@47165
conv.s.v
push.s "dhi"@47166
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "でゅ"@47167
conv.s.v
push.s "dhu"@47168
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "でぇ"@47169
conv.s.v
push.s "dhe"@47170
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "でょ"@47171
conv.s.v
push.s "dho"@47172
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "どぅ"@47173
conv.s.v
push.s "dwu"@47174
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びゃ"@47137
conv.s.v
push.s "dya"@47175
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びぃ"@47139
conv.s.v
push.s "dyi"@47176
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びゅ"@47141
conv.s.v
push.s "dyu"@47177
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びぇ"@47143
conv.s.v
push.s "dye"@47178
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "びょ"@47145
conv.s.v
push.s "dyo"@47179
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふゃ"@47180
conv.s.v
push.s "fya"@47181
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふぃ"@47182
conv.s.v
push.s "fyi"@47183
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふゅ"@47184
conv.s.v
push.s "fyu"@47185
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふぇ"@47186
conv.s.v
push.s "fye"@47187
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふょ"@47188
conv.s.v
push.s "fyo"@47189
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぎゃ"@47190
conv.s.v
push.s "gya"@47191
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぎぃ"@47192
conv.s.v
push.s "gyi"@47193
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぎゅ"@47194
conv.s.v
push.s "gyu"@47195
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぎぇ"@47196
conv.s.v
push.s "gye"@47197
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぎょ"@47198
conv.s.v
push.s "gyo"@47199
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ひゃ"@47200
conv.s.v
push.s "hya"@47201
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ひぃ"@47202
conv.s.v
push.s "hyi"@47203
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ひゅ"@47204
conv.s.v
push.s "hyu"@47205
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ひぇ"@47206
conv.s.v
push.s "hye"@47207
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ひょ"@47208
conv.s.v
push.s "hyo"@47209
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じゃ"@47210
conv.s.v
push.s "jya"@47211
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じぃ"@47212
conv.s.v
push.s "jyi"@47213
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じゅ"@47214
conv.s.v
push.s "jyu"@47215
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じぇ"@47216
conv.s.v
push.s "jye"@47217
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じょ"@47218
conv.s.v
push.s "jyo"@47219
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "きゃ"@47220
conv.s.v
push.s "kya"@47221
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "きぃ"@47222
conv.s.v
push.s "kyi"@47223
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "きゅ"@47224
conv.s.v
push.s "kyu"@47225
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "きぇ"@47226
conv.s.v
push.s "kye"@47227
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "きょ"@47228
conv.s.v
push.s "kyo"@47229
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "っ"@47127
conv.s.v
push.s "ltu"@47230
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "わ"@47231
conv.s.v
push.s "lwa"@47232
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ゃ"@47233
conv.s.v
push.s "lya"@47234
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぃ"@47235
conv.s.v
push.s "lyi"@47236
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ゅ"@47237
conv.s.v
push.s "lyu"@47238
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぇ"@47239
conv.s.v
push.s "lye"@47240
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ょ"@47241
conv.s.v
push.s "lyo"@47242
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "みゃ"@47243
conv.s.v
push.s "mya"@47244
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "みぃ"@47245
conv.s.v
push.s "myi"@47246
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "みゅ"@47247
conv.s.v
push.s "myu"@47248
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "みぇ"@47249
conv.s.v
push.s "mye"@47250
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "みょ"@47251
conv.s.v
push.s "myo"@47252
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "にゃ"@47253
conv.s.v
push.s "nya"@47254
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "にぃ"@47255
conv.s.v
push.s "nyi"@47256
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "にゅ"@47257
conv.s.v
push.s "nyu"@47258
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "にぇ"@47259
conv.s.v
push.s "nye"@47260
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "にょ"@47261
conv.s.v
push.s "nyo"@47262
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぴゃ"@47263
conv.s.v
push.s "pya"@47264
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぴぃ"@47265
conv.s.v
push.s "pyi"@47266
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぴゅ"@47267
conv.s.v
push.s "pyu"@47268
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぴぇ"@47269
conv.s.v
push.s "pye"@47270
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぴょ"@47271
conv.s.v
push.s "pyo"@47272
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "りゃ"@47273
conv.s.v
push.s "rya"@47274
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "りぃ"@47275
conv.s.v
push.s "ryi"@47276
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "りゅ"@47277
conv.s.v
push.s "ryu"@47278
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "りぇ"@47279
conv.s.v
push.s "rye"@47280
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "りょ"@47281
conv.s.v
push.s "ryo"@47282
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しゃ"@47283
conv.s.v
push.s "sha"@47284
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "し"@35445
conv.s.v
push.s "shi"@47285
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しゅ"@47286
conv.s.v
push.s "shu"@47287
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しぇ"@47288
conv.s.v
push.s "she"@47289
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しょ"@47290
conv.s.v
push.s "sho"@47291
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しゃ"@47283
conv.s.v
push.s "sya"@47292
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しぃ"@47293
conv.s.v
push.s "syi"@47294
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しゅ"@47286
conv.s.v
push.s "syu"@47295
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しぇ"@47288
conv.s.v
push.s "sye"@47296
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "しょ"@47290
conv.s.v
push.s "syo"@47297
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "てゃ"@47298
conv.s.v
push.s "tha"@47299
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "てぃ"@47300
conv.s.v
push.s "thi"@47301
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "てゅ"@47302
conv.s.v
push.s "thu"@47303
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "てぇ"@47304
conv.s.v
push.s "the"@47305
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "てょ"@47306
conv.s.v
push.s "tho"@47307
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "つ"@47308
conv.s.v
push.s "tsu"@47309
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "とぅ"@47310
conv.s.v
push.s "twu"@47311
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちゃ"@47147
conv.s.v
push.s "tya"@47312
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちぃ"@47158
conv.s.v
push.s "tyi"@47313
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちゅ"@47151
conv.s.v
push.s "tyu"@47314
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちぇ"@47153
conv.s.v
push.s "tye"@47315
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ちょ"@47155
conv.s.v
push.s "tyo"@47316
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "っ"@47127
conv.s.v
push.s "xtu"@47317
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "わ"@47231
conv.s.v
push.s "xwa"@47318
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ゃ"@47233
conv.s.v
push.s "xya"@47319
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぃ"@47235
conv.s.v
push.s "xyi"@47320
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ゅ"@47237
conv.s.v
push.s "xyu"@47321
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぇ"@47239
conv.s.v
push.s "xye"@47322
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "ょ"@47241
conv.s.v
push.s "xyo"@47323
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じゃ"@47210
conv.s.v
push.s "zya"@47324
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じぃ"@47212
conv.s.v
push.s "zyi"@47325
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じゅ"@47214
conv.s.v
push.s "zyu"@47326
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じぇ"@47216
conv.s.v
push.s "zye"@47327
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
push.s "じょ"@47218
conv.s.v
push.s "zyo"@47328
conv.s.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_set(argc=3)
popz.v
call.i ds_map_create(argc=0)
pop.v.v global.kanatype_lookup_2ch
push.s "ば"@47329
conv.s.v
push.s "ba"@47330
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "び"@47331
conv.s.v
push.s "bi"@47332
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぶ"@47333
conv.s.v
push.s "bu"@47334
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "べ"@47335
conv.s.v
push.s "be"@47336
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぼ"@47337
conv.s.v
push.s "bo"@47338
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "だ"@47339
conv.s.v
push.s "da"@47340
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぢ"@47341
conv.s.v
push.s "di"@47342
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "づ"@47343
conv.s.v
push.s "du"@47344
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "で"@47345
conv.s.v
push.s "de"@47346
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ど"@47347
conv.s.v
push.s "do"@47348
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふぁ"@47349
conv.s.v
push.s "fa"@47350
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふぃ"@47182
conv.s.v
push.s "fi"@47351
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふ"@47352
conv.s.v
push.s "fu"@47353
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふぇ"@47186
conv.s.v
push.s "fe"@47354
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふぉ"@47355
conv.s.v
push.s "fo"@47356
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "が"@47357
conv.s.v
push.s "ga"@47358
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぎ"@47359
conv.s.v
push.s "gi"@47360
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぐ"@47361
conv.s.v
push.s "gu"@47362
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "げ"@47363
conv.s.v
push.s "ge"@47364
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ご"@47365
conv.s.v
push.s "go"@47366
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "は"@47367
conv.s.v
push.s "ha"@47368
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ひ"@47369
conv.s.v
push.s "hi"@47370
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ふ"@47352
conv.s.v
push.s "hu"@47371
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "へ"@47372
conv.s.v
push.s "he"@47373
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ほ"@47374
conv.s.v
push.s "ho"@47375
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "じゃ"@47210
conv.s.v
push.s "ja"@3058
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "じ"@47376
conv.s.v
push.s "ji"@47377
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "じゅ"@47214
conv.s.v
push.s "ju"@47378
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "じぇ"@47216
conv.s.v
push.s "je"@47379
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "じょ"@47218
conv.s.v
push.s "jo"@47380
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "か"@47381
conv.s.v
push.s "ka"@47382
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "き"@47383
conv.s.v
push.s "ki"@47384
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "く"@47385
conv.s.v
push.s "ku"@47386
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "け"@47387
conv.s.v
push.s "ke"@47388
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "こ"@47389
conv.s.v
push.s "ko"@47390
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぁ"@47391
conv.s.v
push.s "la"@47392
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぃ"@47235
conv.s.v
push.s "li"@47393
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぅ"@47394
conv.s.v
push.s "lu"@47395
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぇ"@47239
conv.s.v
push.s "le"@47396
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぉ"@47397
conv.s.v
push.s "lo"@47398
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ま"@47399
conv.s.v
push.s "ma"@47400
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "み"@47401
conv.s.v
push.s "mi"@47402
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "む"@47403
conv.s.v
push.s "mu"@47404
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "め"@47405
conv.s.v
push.s "me"@47406
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "も"@47407
conv.s.v
push.s "mo"@47408
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "な"@47409
conv.s.v
push.s "na"@47410
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "に"@47411
conv.s.v
push.s "ni"@47412
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぬ"@47413
conv.s.v
push.s "nu"@47414
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ね"@47415
conv.s.v
push.s "ne"@47416
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "の"@47417
conv.s.v
push.s "no"@3095
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ん"@47112
conv.s.v
push.s "nn"@47418
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぱ"@47419
conv.s.v
push.s "pa"@47420
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぴ"@47421
conv.s.v
push.s "pi"@47422
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぷ"@47423
conv.s.v
push.s "pu"@47424
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぺ"@47425
conv.s.v
push.s "pe"@47426
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぽ"@47427
conv.s.v
push.s "po"@47428
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ら"@47429
conv.s.v
push.s "ra"@47430
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "り"@47431
conv.s.v
push.s "ri"@47432
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "る"@47433
conv.s.v
push.s "ru"@47434
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "れ"@47435
conv.s.v
push.s "re"@47436
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ろ"@47437
conv.s.v
push.s "ro"@47438
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "さ"@47439
conv.s.v
push.s "sa"@47440
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "し"@35445
conv.s.v
push.s "si"@47441
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "す"@47442
conv.s.v
push.s "su"@47443
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "せ"@47444
conv.s.v
push.s "se"@47445
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "そ"@47446
conv.s.v
push.s "so"@47447
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "た"@47448
conv.s.v
push.s "ta"@47449
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ち"@47149
conv.s.v
push.s "ti"@47450
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "つ"@47308
conv.s.v
push.s "tu"@47451
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "て"@45472
conv.s.v
push.s "te"@47452
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "と"@47453
conv.s.v
push.s "to"@47454
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "わ"@47231
conv.s.v
push.s "wa"@47455
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "うぃ"@47456
conv.s.v
push.s "wi"@47457
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "う"@47122
conv.s.v
push.s "wu"@47458
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "うぇ"@47459
conv.s.v
push.s "we"@47460
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "を"@47461
conv.s.v
push.s "wo"@47462
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぁ"@47391
conv.s.v
push.s "xa"@47463
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぃ"@47235
conv.s.v
push.s "xi"@47464
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぅ"@47394
conv.s.v
push.s "xu"@47465
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぇ"@47239
conv.s.v
push.s "xe"@47466
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぉ"@47397
conv.s.v
push.s "xo"@47467
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "や"@47468
conv.s.v
push.s "ya"@47469
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "い"@47121
conv.s.v
push.s "yi"@47470
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ゆ"@47471
conv.s.v
push.s "yu"@47472
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "いぇ"@47473
conv.s.v
push.s "ye"@47474
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "よ"@47475
conv.s.v
push.s "yo"@47476
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ざ"@47477
conv.s.v
push.s "za"@47478
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "じ"@47376
conv.s.v
push.s "zi"@47479
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ず"@47480
conv.s.v
push.s "zu"@47481
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぜ"@47482
conv.s.v
push.s "ze"@47483
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v
push.s "ぞ"@47484
conv.s.v
push.s "zo"@47485
conv.s.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_set(argc=3)
popz.v

:[end]