.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final CW_LEVEL_COUNT:I

.field static final CW_SIGNAL_STRENGTH:[[I

.field static final CW_TYPE_COUNT:I

.field static final CW_TYPE_STRENGTH:[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 22
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->CW_TYPE_STRENGTH:[I

    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->CW_TYPE_STRENGTH:[I

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->CW_TYPE_COUNT:I

    .line 45
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->CW_SIGNAL_STRENGTH:[[I

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->CW_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->CW_LEVEL_COUNT:I

    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0x7f020153
        0x7f020154
        0x7f020156
        0x7f020158
        0x7f02015a
    .end array-data

    :array_1
    .array-data 4
        0x7f020153
        0x7f020155
        0x7f020157
        0x7f020159
        0x7f02015b
    .end array-data

    .line 38
    :array_2
    .array-data 4
        0x7f02001b
        0x7f020016
    .end array-data

    .line 45
    :array_3
    .array-data 4
        0x7f020016
        0x7f020017
        0x7f020018
        0x7f020019
        0x7f02001a
    .end array-data

    :array_4
    .array-data 4
        0x7f02001b
        0x7f02001c
        0x7f02001d
        0x7f02001e
        0x7f02001f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
