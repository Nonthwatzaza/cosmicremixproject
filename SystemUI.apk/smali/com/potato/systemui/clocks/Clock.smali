.class public Lcom/potato/systemui/clocks/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale",
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/potato/systemui/clocks/Clock$SettingsObserver;
    }
.end annotation


# static fields
.field private static AM_PM_STYLE:I = 0x0

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Clock"

.field private static final WEEKDAY_STYLE_GONE:I = 0x2

.field private static final WEEKDAY_STYLE_NORMAL:I = 0x0

.field private static final WEEKDAY_STYLE_SMALL:I = 0x1

.field private static final tens:[Ljava/lang/String;

.field private static final units:[Ljava/lang/String;


# instance fields
.field private WEEKDAY_STYLE:I

.field private ampmPotato:I

.field private ampm_size:I

.field private anim:Landroid/view/animation/Animation;

.field private animate:I

.field private bold:Landroid/graphics/Typeface;

.field private clock_styleChoosah:I

.field private color:Ljava/lang/String;

.field private condense:Landroid/graphics/Typeface;

.field private custom_clock_format:Ljava/lang/String;

.field private custom_date_format:Ljava/lang/String;

.field private custom_font:Ljava/lang/String;

.field private date_size:I

.field private date_style:I

.field private dayPotato:I

.field private font:I

.field private light:Landroid/graphics/Typeface;

.field private light_italic:Landroid/graphics/Typeface;

.field private mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowClock:Z

.field private mShowClocker:Z

.field private mWeekdayStyle:I

.field private ninja_clock_upper:I

.field private normal:Landroid/graphics/Typeface;

.field private normal_upper:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 72
    sput v3, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    .line 112
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Zero"

    aput-object v1, v0, v4

    const-string v1, "One"

    aput-object v1, v0, v5

    const-string v1, "Two"

    aput-object v1, v0, v3

    const-string v1, "Three"

    aput-object v1, v0, v6

    const-string v1, "Four"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 113
    const-string v2, "Five"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Six"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Seven"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Eight"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Nine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Ten"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 114
    const-string v2, "Eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Twelve"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Thirteen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Fourteen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Fifteen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 115
    const-string v2, "Sixteen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Seventeen"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Eighteen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Nineteen"

    aput-object v2, v0, v1

    .line 112
    sput-object v0, Lcom/potato/systemui/clocks/Clock;->units:[Ljava/lang/String;

    .line 116
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "Twenty"

    aput-object v1, v0, v3

    const-string v1, "Thirty"

    aput-object v1, v0, v6

    const-string v1, "Forty"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fifty"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 117
    const-string v2, "Sixty"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Seventy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Eighty"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Ninety"

    aput-object v2, v0, v1

    .line 116
    sput-object v0, Lcom/potato/systemui/clocks/Clock;->tens:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/potato/systemui/clocks/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/potato/systemui/clocks/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v1, 0x2

    iput v1, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    .line 105
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->bold:Landroid/graphics/Typeface;

    .line 106
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "condensed.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->condense:Landroid/graphics/Typeface;

    .line 107
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "light.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->light:Landroid/graphics/Typeface;

    .line 108
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "italic.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->light_italic:Landroid/graphics/Typeface;

    .line 109
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->normal:Landroid/graphics/Typeface;

    .line 195
    new-instance v1, Lcom/potato/systemui/clocks/Clock$1;

    invoke-direct {v1, p0}, Lcom/potato/systemui/clocks/Clock$1;-><init>(Lcom/potato/systemui/clocks/Clock;)V

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/potato/systemui/clocks/Clock$SettingsObserver;-><init>(Lcom/potato/systemui/clocks/Clock;Landroid/os/Handler;)V

    .line 152
    .local v0, "settingsObserver":Lcom/potato/systemui/clocks/Clock$SettingsObserver;
    invoke-virtual {v0}, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->observe()V

    .line 154
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->updateSettings()V

    .line 155
    return-void
.end method

.method static synthetic access$0(Lcom/potato/systemui/clocks/Clock;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/potato/systemui/clocks/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$10(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->ampm_size:I

    return-void
.end method

.method static synthetic access$11(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->custom_font:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->ninja_clock_upper:I

    return-void
.end method

.method static synthetic access$13(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    return-void
.end method

.method static synthetic access$14(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->normal_upper:I

    return-void
.end method

.method static synthetic access$15(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->animate:I

    return-void
.end method

.method static synthetic access$17(Lcom/potato/systemui/clocks/Clock;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->date_format()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setFont()V

    return-void
.end method

.method static synthetic access$19(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setColor()V

    return-void
.end method

.method static synthetic access$2(Lcom/potato/systemui/clocks/Clock;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$20(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setAMPM()V

    return-void
.end method

.method static synthetic access$21(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setDay()V

    return-void
.end method

.method static synthetic access$22(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->updateSettings()V

    return-void
.end method

.method static synthetic access$3(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    return-void
.end method

.method static synthetic access$4(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->ampmPotato:I

    return-void
.end method

.method static synthetic access$6(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->dayPotato:I

    return-void
.end method

.method static synthetic access$7(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->date_style:I

    return-void
.end method

.method static synthetic access$8(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->date_size:I

    return-void
.end method

.method private animango()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    .line 277
    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 279
    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    return-void
.end method

.method public static convert(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p0, "i"    # Ljava/lang/Integer;

    .prologue
    const v3, 0xf4240

    .line 385
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/potato/systemui/clocks/Clock;->units:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 389
    :goto_0
    return-object v0

    .line 386
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/potato/systemui/clocks/Clock;->tens:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/potato/systemui/clocks/Clock;->units:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Hundred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 388
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Thousand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_3

    .line 389
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Million "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/2addr v0, v3

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, ""

    goto :goto_4
.end method

.method private customClockFormat()Ljava/lang/String;
    .locals 6

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 286
    const-string v5, "custom_clock_format"

    .line 285
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 292
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 298
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .local v3, "timex":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 294
    .end local v3    # "timex":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    .restart local v3    # "timex":Ljava/lang/String;
    goto :goto_0
.end method

.method private date_format()Ljava/lang/String;
    .locals 4

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    const/4 v3, 0x0

    .line 435
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/systemui/clocks/Clock;->date_style:I

    .line 438
    const-string v1, "custom_date_format"

    .line 437
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    .line 440
    iget v1, p0, Lcom/potato/systemui/clocks/Clock;->date_style:I

    packed-switch v1, :pswitch_data_0

    .line 482
    const-string v1, "dd"

    :goto_0
    return-object v1

    .line 443
    :pswitch_0
    const-string v1, "MM/dd/yy"

    goto :goto_0

    .line 445
    :pswitch_1
    const-string v1, "dd/MM/yy"

    goto :goto_0

    .line 447
    :pswitch_2
    const-string v1, "yyyy-MM-dd"

    goto :goto_0

    .line 449
    :pswitch_3
    const-string v1, "yyyy-dd-MM"

    goto :goto_0

    .line 451
    :pswitch_4
    const-string v1, "MM-dd-yyyy"

    goto :goto_0

    .line 453
    :pswitch_5
    const-string v1, "dd-MM-yyyy"

    goto :goto_0

    .line 455
    :pswitch_6
    const-string v1, "MMM dd"

    goto :goto_0

    .line 457
    :pswitch_7
    const-string v1, "MMM dd,yyyy"

    goto :goto_0

    .line 459
    :pswitch_8
    const-string v1, "MMMMM dd,yyyy"

    goto :goto_0

    .line 461
    :pswitch_9
    const-string v1, "EEE"

    goto :goto_0

    .line 463
    :pswitch_a
    const-string v1, "EEE dd"

    goto :goto_0

    .line 465
    :pswitch_b
    const-string v1, "EEE dd/MM"

    goto :goto_0

    .line 467
    :pswitch_c
    const-string v1, "EEE MM/dd"

    goto :goto_0

    .line 470
    :pswitch_d
    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    goto :goto_0

    .line 472
    :pswitch_e
    const-string v1, "EEE MMM dd"

    goto :goto_0

    .line 474
    :pswitch_f
    const-string v1, "EEE MMMMM dd"

    goto :goto_0

    .line 476
    :pswitch_10
    const-string v1, "E MM/dd"

    goto :goto_0

    .line 478
    :pswitch_11
    const-string v1, "E dd/MM"

    goto :goto_0

    .line 480
    :pswitch_12
    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getDay(I)Ljava/lang/String;
    .locals 7
    .param p1, "today"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 630
    const/4 v0, 0x0

    .line 635
    .local v0, "currentDay":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->date_format()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 642
    .local v1, "date":Ljava/util/Date;
    packed-switch p1, :pswitch_data_0

    .line 666
    :goto_1
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "newDate":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 670
    :goto_2
    return-object v5

    .line 636
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "newDate":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 637
    .local v3, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "EEEEE"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 644
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "date":Ljava/util/Date;
    :pswitch_0
    const-string v0, "Sun Tangna"

    .line 645
    goto :goto_1

    .line 647
    :pswitch_1
    const-string v0, "Mon"

    .line 648
    goto :goto_1

    .line 650
    :pswitch_2
    const-string v0, "Tue"

    .line 651
    goto :goto_1

    .line 653
    :pswitch_3
    const-string v0, "Wed"

    .line 654
    goto :goto_1

    .line 656
    :pswitch_4
    const-string v0, "Thu"

    .line 657
    goto :goto_1

    .line 659
    :pswitch_5
    const-string v0, "Fri"

    .line 660
    goto :goto_1

    .line 662
    :pswitch_6
    const-string v0, "Sat"

    goto :goto_1

    .line 669
    .restart local v4    # "newDate":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 670
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v5, "EEE"

    goto :goto_2

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 31

    .prologue
    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->setAMPM()V

    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->setDay()V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 503
    .local v12, "context":Landroid/content/Context;
    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    .line 506
    .local v9, "b24":Z
    if-eqz v9, :cond_5

    .line 507
    const-string v22, "HH:mm"

    .line 512
    .local v22, "res":Ljava/lang/String;
    :goto_0
    const v5, 0xef00

    .line 513
    .local v5, "MAGIC1":C
    const v6, 0xef01

    .line 516
    .local v6, "MAGIC2":C
    move-object/from16 v16, v22

    .line 517
    .local v16, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 523
    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    if-eqz v27, :cond_1

    .line 524
    const/4 v7, -0x1

    .line 525
    .local v7, "a":I
    const/16 v21, 0x0

    .line 526
    .local v21, "quoted":Z
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 538
    :goto_2
    if-ltz v7, :cond_1

    .line 540
    move v8, v7

    .line 541
    .local v8, "b":I
    :goto_3
    if-lez v7, :cond_0

    add-int/lit8 v27, v7, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v27

    if-nez v27, :cond_a

    .line 544
    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v28, 0xef00

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 545
    const-string v28, "a"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0xef01

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v28, v8, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 544
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 549
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v18    # "i":I
    .end local v21    # "quoted":Z
    :cond_1
    new-instance v24, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v24, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 550
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    .line 554
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    .line 556
    .local v23, "result":Ljava/lang/String;
    const/4 v13, 0x0

    .line 558
    .local v13, "currentDay":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 559
    .local v11, "calendar":Ljava/util/Calendar;
    const/16 v27, 0x7

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 562
    .local v14, "day":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 563
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/potato/systemui/clocks/Clock;->getDay(I)Ljava/lang/String;

    move-result-object v13

    .line 564
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 567
    :cond_2
    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 571
    .local v17, "formatted":Landroid/text/SpannableStringBuilder;
    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    if-eqz v27, :cond_3

    .line 572
    const v27, 0xef00

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 573
    .local v19, "magic1":I
    const v27, 0xef01

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 574
    .local v20, "magic2":I
    if-ltz v19, :cond_3

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 575
    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 576
    add-int/lit8 v27, v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 601
    .end local v19    # "magic1":I
    .end local v20    # "magic2":I
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 602
    if-eqz v13, :cond_4

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 604
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 625
    :cond_4
    :goto_6
    return-object v17

    .line 509
    .end local v5    # "MAGIC1":C
    .end local v6    # "MAGIC2":C
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v13    # "currentDay":Ljava/lang/String;
    .end local v14    # "day":I
    .end local v16    # "format":Ljava/lang/String;
    .end local v17    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v22    # "res":Ljava/lang/String;
    .end local v23    # "result":Ljava/lang/String;
    .end local v24    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    const-string v22, "h:mm a"

    .restart local v22    # "res":Ljava/lang/String;
    goto/16 :goto_0

    .line 527
    .restart local v5    # "MAGIC1":C
    .restart local v6    # "MAGIC2":C
    .restart local v7    # "a":I
    .restart local v16    # "format":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v21    # "quoted":Z
    :cond_6
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 529
    .local v10, "c":C
    const/16 v27, 0x27

    move/from16 v0, v27

    if-ne v10, v0, :cond_7

    .line 530
    if-eqz v21, :cond_8

    const/16 v21, 0x0

    .line 532
    :cond_7
    :goto_7
    if-nez v21, :cond_9

    const/16 v27, 0x61

    move/from16 v0, v27

    if-ne v10, v0, :cond_9

    .line 533
    move/from16 v7, v18

    .line 534
    goto/16 :goto_2

    .line 530
    :cond_8
    const/16 v21, 0x1

    goto :goto_7

    .line 526
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 542
    .end local v10    # "c":C
    .restart local v8    # "b":I
    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 552
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v18    # "i":I
    .end local v21    # "quoted":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    .restart local v24    # "sdf":Ljava/text/SimpleDateFormat;
    goto/16 :goto_4

    .line 578
    .restart local v11    # "calendar":Ljava/util/Calendar;
    .restart local v13    # "currentDay":Ljava/lang/String;
    .restart local v14    # "day":I
    .restart local v17    # "formatted":Landroid/text/SpannableStringBuilder;
    .restart local v19    # "magic1":I
    .restart local v20    # "magic2":I
    .restart local v23    # "result":Ljava/lang/String;
    :cond_c
    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 579
    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    const v27, 0x3f19999a    # 0.6f

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 581
    .local v26, "style":Landroid/text/style/CharacterStyle;
    const/16 v27, 0x22

    .line 580
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 594
    .end local v26    # "style":Landroid/text/style/CharacterStyle;
    :cond_d
    :goto_8
    add-int/lit8 v27, v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 595
    add-int/lit8 v27, v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_5

    .line 582
    :cond_e
    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v27

    .line 584
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "AMPM_size_custom"

    const/16 v29, 0x64

    .line 583
    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/potato/systemui/clocks/Clock;->ampm_size:I

    .line 586
    const-wide v27, 0x3f847ae147ae147bL    # 0.01

    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->ampm_size:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v15, v0

    .line 588
    .local v15, "fkingsize":F
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "f"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 590
    .local v25, "sizer":Ljava/lang/String;
    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 592
    .restart local v26    # "style":Landroid/text/style/CharacterStyle;
    const/16 v27, 0x22

    .line 591
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 606
    .end local v15    # "fkingsize":F
    .end local v19    # "magic1":I
    .end local v20    # "magic2":I
    .end local v25    # "sizer":Ljava/lang/String;
    .end local v26    # "style":Landroid/text/style/CharacterStyle;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    .line 607
    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    const v27, 0x3f19999a    # 0.6f

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 608
    .restart local v26    # "style":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    const/16 v29, 0x22

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 609
    .end local v26    # "style":Landroid/text/style/CharacterStyle;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v27

    .line 611
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "date_size_custom"

    const/16 v29, 0x64

    .line 610
    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/potato/systemui/clocks/Clock;->date_size:I

    .line 612
    const-wide v27, 0x3f847ae147ae147bL    # 0.01

    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->date_size:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v15, v0

    .line 616
    .restart local v15    # "fkingsize":F
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "f"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 618
    .restart local v25    # "sizer":Ljava/lang/String;
    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 619
    .restart local v26    # "style":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    const/16 v29, 0x22

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6
.end method

.method private normalWordClock()Ljava/lang/String;
    .locals 10

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 353
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "normal_upper"

    const/4 v9, 0x0

    .line 352
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/potato/systemui/clocks/Clock;->normal_upper:I

    .line 357
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "h"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 360
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 362
    .local v2, "hour":I
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v7, "m"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 363
    .restart local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 365
    .local v5, "mins":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "hourWord":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "minWord":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " O\'Clock"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "time":Ljava/lang/String;
    :goto_0
    iget v7, p0, Lcom/potato/systemui/clocks/Clock;->normal_upper:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 377
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 380
    :cond_0
    return-object v6

    .line 370
    .end local v6    # "time":Ljava/lang/String;
    :cond_1
    const/16 v7, 0xa

    if-ge v5, v7, :cond_2

    if-lez v5, :cond_2

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " O\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "time":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v6    # "time":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "time":Ljava/lang/String;
    goto :goto_0
.end method

.method private setAMPM()V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ampm"

    const/4 v2, 0x0

    .line 393
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->ampmPotato:I

    .line 395
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->ampmPotato:I

    sput v0, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    .line 396
    return-void
.end method

.method private setColor()V
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 489
    const-string v2, "clock_color"

    .line 488
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->color:Ljava/lang/String;

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/potato/systemui/clocks/Clock;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/potato/systemui/clocks/Clock;->setTextColor(I)V

    goto :goto_0
.end method

.method private setDay()V
    .locals 3

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "day"

    const/4 v2, 0x0

    .line 399
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->dayPotato:I

    .line 401
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->dayPotato:I

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    .line 402
    return-void
.end method

.method private setFont()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 405
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_font"

    .line 405
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    .line 407
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 408
    const-string v3, "custom_font"

    .line 407
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/potato/systemui/clocks/Clock;->custom_font:Ljava/lang/String;

    .line 409
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 410
    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->bold:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 412
    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->condense:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 413
    :cond_2
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 414
    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->light:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 415
    :cond_3
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 416
    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->light_italic:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 417
    :cond_4
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    if-ne v2, v4, :cond_5

    .line 418
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 419
    :cond_5
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->custom_font:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 422
    .local v0, "custom":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v0    # "custom":Landroid/graphics/Typeface;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->normal:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 426
    const-string v2, "Clock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TANGINATHIS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 681
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 684
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "status_bar_am_pm"

    const/4 v4, 0x2

    .line 683
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/potato/systemui/clocks/Clock;->mAmPmStyle:I

    .line 687
    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mAmPmStyle:I

    sget v4, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    if-eq v3, v4, :cond_0

    .line 688
    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mAmPmStyle:I

    sput v3, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    .line 689
    const-string v3, ""

    iput-object v3, p0, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    .line 691
    iget-boolean v3, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-eqz v3, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    .line 696
    :cond_0
    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mWeekdayStyle:I

    iget v4, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    if-eq v3, v4, :cond_1

    .line 697
    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mWeekdayStyle:I

    iput v3, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    .line 698
    const-string v3, ""

    iput-object v3, p0, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    .line 700
    iget-boolean v3, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-eqz v3, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    .line 706
    :cond_1
    const-string v3, "status_bar_clock"

    .line 705
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 706
    if-ne v3, v1, :cond_2

    .line 705
    :goto_0
    iput-boolean v1, p0, Lcom/potato/systemui/clocks/Clock;->mShowClock:Z

    .line 708
    iget-boolean v1, p0, Lcom/potato/systemui/clocks/Clock;->mShowClock:Z

    if-eqz v1, :cond_3

    .line 709
    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setVisibility(I)V

    .line 712
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 706
    goto :goto_0

    .line 711
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/potato/systemui/clocks/Clock;->setVisibility(I)V

    goto :goto_1
.end method

.method private wordClock()Ljava/lang/String;
    .locals 10

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 305
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ninja_clock_upper"

    const/4 v9, 0x0

    .line 304
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/potato/systemui/clocks/Clock;->ninja_clock_upper:I

    .line 309
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "h"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 312
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 314
    .local v2, "hour":I
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v7, "m"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 317
    .local v5, "mins":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x1e

    if-le v7, v8, :cond_2

    .line 318
    const/16 v7, 0xc

    if-ne v2, v7, :cond_1

    .line 319
    add-int/lit8 v2, v2, -0xb

    .line 320
    rsub-int/lit8 v5, v5, 0x3c

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "hourWord":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "minWord":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 342
    .end local v4    # "minWord":Ljava/lang/String;
    .local v6, "time":Ljava/lang/String;
    :goto_0
    iget v7, p0, Lcom/potato/systemui/clocks/Clock;->ninja_clock_upper:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 343
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 346
    :cond_0
    return-object v6

    .line 325
    .end local v3    # "hourWord":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 326
    rsub-int/lit8 v5, v5, 0x3c

    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .restart local v3    # "hourWord":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .restart local v4    # "minWord":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "time":Ljava/lang/String;
    goto :goto_0

    .line 332
    .end local v3    # "hourWord":Ljava/lang/String;
    .end local v4    # "minWord":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .restart local v3    # "hourWord":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "It\'s already "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "time":Ljava/lang/String;
    goto :goto_0

    .line 337
    .end local v3    # "hourWord":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .restart local v3    # "hourWord":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .restart local v4    # "minWord":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " past "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "time":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public VisibilityChecks(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/potato/systemui/clocks/Clock;->mShowClocker:Z

    .line 676
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->updateSettings()V

    .line 677
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 161
    iget-boolean v1, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.potato.clock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 177
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    .line 180
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    .line 181
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setFont()V

    .line 182
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setColor()V

    .line 183
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setAMPM()V

    .line 184
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 189
    iget-boolean v0, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    .line 193
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 252
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animate"

    const/4 v2, 0x0

    .line 252
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->animate:I

    .line 255
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_styleChoosah"

    .line 255
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    .line 258
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->animate:I

    if-ne v0, v3, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->animango()V

    .line 262
    :cond_0
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->wordClock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 265
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->normalWordClock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_3
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    if-ne v0, v3, :cond_4

    .line 267
    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 268
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_4
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->customClockFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
