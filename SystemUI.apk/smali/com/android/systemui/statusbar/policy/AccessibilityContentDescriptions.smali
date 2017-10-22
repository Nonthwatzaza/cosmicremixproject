.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_5_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_6_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 23
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 32
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 14
    :array_0
    .array-data 4
        0x7f0a00a7
        0x7f0a00a8
        0x7f0a00a9
        0x7f0a00aa
        0x7f0a00ad
    .end array-data

    .line 23
    :array_1
    .array-data 4
        0x7f0a00a7
        0x7f0a00a8
        0x7f0a00a9
        0x7f0a00aa
        0x7f0a00ab
        0x7f0a00ad
    .end array-data

    .line 32
    :array_2
    .array-data 4
        0x7f0a00a7
        0x7f0a00a8
        0x7f0a00a9
        0x7f0a00aa
        0x7f0a00ab
        0x7f0a00ac
        0x7f0a00ad
    .end array-data

    .line 43
    :array_3
    .array-data 4
        0x7f0a00ae
        0x7f0a00af
        0x7f0a00b0
        0x7f0a00b1
        0x7f0a00b4
    .end array-data

    .line 52
    :array_4
    .array-data 4
        0x7f0a00ae
        0x7f0a00af
        0x7f0a00b0
        0x7f0a00b1
        0x7f0a00b2
        0x7f0a00b4
    .end array-data

    .line 61
    :array_5
    .array-data 4
        0x7f0a00ae
        0x7f0a00af
        0x7f0a00b0
        0x7f0a00b1
        0x7f0a00b2
        0x7f0a00b3
        0x7f0a00b4
    .end array-data

    .line 72
    :array_6
    .array-data 4
        0x7f0a00b5
        0x7f0a00b6
        0x7f0a00b7
        0x7f0a00b8
        0x7f0a00b9
    .end array-data

    .line 79
    :array_7
    .array-data 4
        0x7f0a00ba
        0x7f0a00bb
        0x7f0a00bc
        0x7f0a00bd
        0x7f0a00be
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
