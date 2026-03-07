.localvar 0 arguments

:[0]
push.i 32769
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[1]
push.i 32770
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[2]
push.i 32771
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[3]
push.i 32772
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[4]
push.i 32773
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[5]
push.i 32775
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[6]
push.i 32774
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[7]
push.i 32776
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[8]
push.i 32777
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[9]
push.i 32778
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[10]
push.i 32779
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
bt [12]

:[11]
push.i 32780
conv.i.v
pushbltn.v self.argument0
call.i gamepad_button_check(argc=2)
conv.v.b
b [13]

:[12]
push.e 1

:[13]
conv.b.v
ret.v

:[end]