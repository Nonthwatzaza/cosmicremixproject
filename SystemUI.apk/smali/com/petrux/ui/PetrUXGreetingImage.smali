.class public Lcom/petrux/ui/PetrUXGreetingImage;
.super Landroid/widget/ImageView;
.source "PetrUXGreetingImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/petrux/ui/PetrUXGreetingImage$100000000;
    }
.end annotation


# static fields
.field private static final CAL_AGUSTUSAN:Ljava/util/Calendar;

.field private static final CAL_NEWYEARSEVE:Ljava/util/Calendar;

.field private static final TIME_EVENING:I = 0x12

.field private static final TIME_MORNING:I = 0x5

.field private static final TIME_NIGHT:I = 0x16

.field private static final TIME_NOON:I = 0xc


# instance fields
.field backgroundStyle:Ljava/lang/String;

.field brotkes:Ljava/lang/String;

.field private cuk:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/petrux/ui/PetrUXGreetingImage;->CAL_AGUSTUSAN:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/petrux/ui/PetrUXGreetingImage;->CAL_NEWYEARSEVE:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    move-object v5, v0

    move-object v6, v0

    iput-object v6, v5, Lcom/petrux/ui/PetrUXGreetingImage;->cuk:Landroid/widget/ImageView;

    .line 62
    new-instance v5, Landroid/os/Handler;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v3, v5

    .line 63
    move-object v5, v3

    new-instance v6, Lcom/petrux/ui/PetrUXGreetingImage$100000000;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/petrux/ui/PetrUXGreetingImage$100000000;-><init>(Lcom/petrux/ui/PetrUXGreetingImage;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    return-void
.end method

.method private static isItToday(Ljava/util/Calendar;)Z
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object v1, v3

    .line 128
    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v3, v1

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected updateTime(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    move-object v2, v8

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    move-object v3, v8

    .line 75
    move-object v8, v3

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move v4, v8

    .line 77
    move v8, v4

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    move v8, v4

    const/16 v9, 0x16

    if-lt v8, v9, :cond_2

    .line 79
    :cond_0
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "night.png"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    .line 81
    move-object v8, v5

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v6, v8

    .line 83
    move-object v8, v0

    iget-object v8, v8, Lcom/petrux/ui/PetrUXGreetingImage;->cuk:Landroid/widget/ImageView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/petrux/ui/PetrUXGreetingImage;->mContext:Landroid/content/Context;

    return-void

    .line 83
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 85
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    :cond_2
    move v8, v4

    const/4 v9, 0x5

    if-lt v8, v9, :cond_3

    move v8, v4

    const/16 v9, 0xc

    if-ge v8, v9, :cond_3

    .line 91
    move-object v8, v1

    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "morning.png"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    .line 93
    move-object v8, v5

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v6, v8

    .line 94
    move-object v8, v0

    iget-object v8, v8, Lcom/petrux/ui/PetrUXGreetingImage;->cuk:Landroid/widget/ImageView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    goto :goto_0

    .line 94
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 96
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 99
    :cond_3
    move v8, v4

    const/16 v9, 0x12

    if-lt v8, v9, :cond_4

    move v8, v4

    const/16 v9, 0x16

    if-ge v8, v9, :cond_4

    .line 101
    move-object v8, v1

    :try_start_2
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "night.png"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    .line 103
    move-object v8, v5

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v6, v8

    .line 105
    move-object v8, v0

    iget-object v8, v8, Lcom/petrux/ui/PetrUXGreetingImage;->cuk:Landroid/widget/ImageView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    :goto_2
    goto :goto_0

    .line 105
    :catch_2
    move-exception v8

    move-object v5, v8

    .line 107
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 110
    :cond_4
    move v8, v4

    const/16 v9, 0xc

    if-lt v8, v9, :cond_1

    move v8, v4

    const/16 v9, 0x12

    if-ge v8, v9, :cond_1

    .line 112
    move-object v8, v1

    :try_start_3
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "noon.png"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    .line 114
    move-object v8, v5

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v6, v8

    .line 115
    move-object v8, v0

    iget-object v8, v8, Lcom/petrux/ui/PetrUXGreetingImage;->cuk:Landroid/widget/ImageView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    move-object v5, v8

    .line 117
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
