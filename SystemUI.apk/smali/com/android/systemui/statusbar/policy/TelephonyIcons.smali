.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_3G_LGT:[[I

.field static final DATA_3G_PLUS:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_ATT:[[I

.field static final DATA_4G_LGT:[[I

.field static final DATA_4G_LTE:[[I

.field static final DATA_4G_LTE_PLUS:[[I

.field static final DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_H_PLUS:[[I

.field static final DATA_LTE:[[I

.field static final DATA_LTE_ATT:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final DATA_SIGNAL_STRENGTH_FOCUS:[I

.field static final DATA_T:[[I

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 25
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 38
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 52
    new-array v0, v6, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 67
    new-array v0, v6, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 85
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .line 93
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 94
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_FOCUS:[I

    .line 97
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 99
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 105
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 116
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 127
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 139
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    .line 150
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 161
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    .line 174
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 186
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 197
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 209
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    .line 220
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_PLUS:[[I

    .line 233
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    .line 244
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    .line 259
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_LGT:[[I

    .line 278
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LGT:[[I

    .line 297
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_T:[[I

    return-void

    .line 25
    nop

    :array_0
    .array-data 4
        0x7f02012a
        0x7f02012c
        0x7f02012e
        0x7f020130
        0x7f020132
    .end array-data

    :array_1
    .array-data 4
        0x7f02012b
        0x7f02012d
        0x7f02012f
        0x7f020131
        0x7f020133
    .end array-data

    .line 38
    :array_2
    .array-data 4
        0x7f02012a
        0x7f02012c
        0x7f02012e
        0x7f020130
        0x7f020132
    .end array-data

    :array_3
    .array-data 4
        0x7f02012b
        0x7f02012d
        0x7f02012f
        0x7f020131
        0x7f020133
    .end array-data

    .line 52
    :array_4
    .array-data 4
        0x7f020277
        0x7f020279
        0x7f02027b
        0x7f02027d
        0x7f02027f
        0x7f020281
    .end array-data

    :array_5
    .array-data 4
        0x7f020278
        0x7f02027a
        0x7f02027c
        0x7f02027e
        0x7f020280
        0x7f020282
    .end array-data

    .line 67
    :array_6
    .array-data 4
        0x7f020283
        0x7f020285
        0x7f020287
        0x7f020289
        0x7f02028b
        0x7f02028d
        0x7f02028f
    .end array-data

    :array_7
    .array-data 4
        0x7f020284
        0x7f020286
        0x7f020288
        0x7f02028a
        0x7f02028c
        0x7f02028e
        0x7f020290
    .end array-data

    .line 85
    :array_8
    .array-data 4
        0x7f020134
        0x7f020135
        0x7f020136
        0x7f020137
        0x7f020138
    .end array-data

    .line 105
    :array_9
    .array-data 4
        0x7f0200e8
        0x7f0200e8
        0x7f0200e8
        0x7f0200e8
    .end array-data

    :array_a
    .array-data 4
        0x7f0200fe
        0x7f0200fe
        0x7f0200fe
        0x7f0200fe
    .end array-data

    .line 116
    :array_b
    .array-data 4
        0x7f0200e0
        0x7f0200e0
        0x7f0200e0
        0x7f0200e0
    .end array-data

    :array_c
    .array-data 4
        0x7f0200f6
        0x7f0200f6
        0x7f0200f6
        0x7f0200f6
    .end array-data

    .line 127
    :array_d
    .array-data 4
        0x7f0200e7
        0x7f0200e7
        0x7f0200e7
        0x7f0200e7
    .end array-data

    :array_e
    .array-data 4
        0x7f0200fd
        0x7f0200fd
        0x7f0200fd
        0x7f0200fd
    .end array-data

    .line 139
    :array_f
    .array-data 4
        0x7f0200e1
        0x7f0200e1
        0x7f0200e1
        0x7f0200e1
    .end array-data

    :array_10
    .array-data 4
        0x7f0200f7
        0x7f0200f7
        0x7f0200f7
        0x7f0200f7
    .end array-data

    .line 150
    :array_11
    .array-data 4
        0x7f0200e9
        0x7f0200e9
        0x7f0200e9
        0x7f0200e9
    .end array-data

    :array_12
    .array-data 4
        0x7f0200ff
        0x7f0200ff
        0x7f0200ff
        0x7f0200ff
    .end array-data

    .line 161
    :array_13
    .array-data 4
        0x7f0200ea
        0x7f0200ea
        0x7f0200ea
        0x7f0200ea
    .end array-data

    :array_14
    .array-data 4
        0x7f020100
        0x7f020100
        0x7f020100
        0x7f020100
    .end array-data

    .line 174
    :array_15
    .array-data 4
        0x7f0200df
        0x7f0200df
        0x7f0200df
        0x7f0200df
    .end array-data

    :array_16
    .array-data 4
        0x7f0200f5
        0x7f0200f5
        0x7f0200f5
        0x7f0200f5
    .end array-data

    .line 186
    :array_17
    .array-data 4
        0x7f0200e2
        0x7f0200e2
        0x7f0200e2
        0x7f0200e2
    .end array-data

    :array_18
    .array-data 4
        0x7f0200f8
        0x7f0200f8
        0x7f0200f8
        0x7f0200f8
    .end array-data

    .line 197
    :array_19
    .array-data 4
        0x7f0200ec
        0x7f0200ec
        0x7f0200ec
        0x7f0200ec
    .end array-data

    :array_1a
    .array-data 4
        0x7f020101
        0x7f020101
        0x7f020101
        0x7f020101
    .end array-data

    .line 209
    :array_1b
    .array-data 4
        0x7f0200e3
        0x7f0200e3
        0x7f0200e3
        0x7f0200e3
    .end array-data

    :array_1c
    .array-data 4
        0x7f0200f9
        0x7f0200f9
        0x7f0200f9
        0x7f0200f9
    .end array-data

    .line 220
    :array_1d
    .array-data 4
        0x7f0200e4
        0x7f0200e4
        0x7f0200e4
        0x7f0200e4
    .end array-data

    :array_1e
    .array-data 4
        0x7f0200fa
        0x7f0200fa
        0x7f0200fa
        0x7f0200fa
    .end array-data

    .line 233
    :array_1f
    .array-data 4
        0x7f0200e2
        0x7f02029b
        0x7f0202a0
        0x7f02029f
    .end array-data

    :array_20
    .array-data 4
        0x7f0200e2
        0x7f02029b
        0x7f0202a0
        0x7f02029f
    .end array-data

    .line 244
    :array_21
    .array-data 4
        0x7f020296
        0x7f02029b
        0x7f0202a0
        0x7f02029f
    .end array-data

    :array_22
    .array-data 4
        0x7f020296
        0x7f02029b
        0x7f0202a0
        0x7f02029f
    .end array-data

    .line 259
    :array_23
    .array-data 4
        0x7f020299
        0x7f020299
        0x7f020299
        0x7f020299
    .end array-data

    :array_24
    .array-data 4
        0x7f020299
        0x7f020299
        0x7f020299
        0x7f020299
    .end array-data

    :array_25
    .array-data 4
        0x7f020297
        0x7f020297
        0x7f020297
        0x7f020297
    .end array-data

    :array_26
    .array-data 4
        0x7f020297
        0x7f020297
        0x7f020297
        0x7f020297
    .end array-data

    .line 278
    :array_27
    .array-data 4
        0x7f02029a
        0x7f02029a
        0x7f02029a
        0x7f02029a
    .end array-data

    :array_28
    .array-data 4
        0x7f02029a
        0x7f02029a
        0x7f02029a
        0x7f02029a
    .end array-data

    :array_29
    .array-data 4
        0x7f020298
        0x7f020298
        0x7f020298
        0x7f020298
    .end array-data

    :array_2a
    .array-data 4
        0x7f020298
        0x7f020298
        0x7f020298
        0x7f020298
    .end array-data

    .line 297
    :array_2b
    .array-data 4
        0x7f0200f1
        0x7f0200f1
        0x7f0200f1
        0x7f0200f1
    .end array-data

    :array_2c
    .array-data 4
        0x7f020102
        0x7f020102
        0x7f020102
        0x7f020102
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
