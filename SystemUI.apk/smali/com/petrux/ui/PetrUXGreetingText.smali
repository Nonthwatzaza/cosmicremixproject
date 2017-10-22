.class public Lcom/petrux/ui/PetrUXGreetingText;
.super Landroid/widget/TextView;
.source "PetrUXGreetingText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/petrux/ui/PetrUXGreetingText$100000000;
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

.field private cuk:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/petrux/ui/PetrUXGreetingText;->CAL_AGUSTUSAN:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/petrux/ui/PetrUXGreetingText;->CAL_NEWYEARSEVE:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    move-object v5, v0

    move-object v6, v0

    iput-object v6, v5, Lcom/petrux/ui/PetrUXGreetingText;->cuk:Landroid/widget/TextView;

    .line 57
    new-instance v5, Landroid/os/Handler;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v3, v5

    .line 58
    move-object v5, v3

    new-instance v6, Lcom/petrux/ui/PetrUXGreetingText$100000000;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/petrux/ui/PetrUXGreetingText$100000000;-><init>(Lcom/petrux/ui/PetrUXGreetingText;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    return-void
.end method

.method private static isItToday(Ljava/util/Calendar;)Z
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object v1, v3

    .line 102
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    sget-object v5, Lcom/petrux/ui/PetrUXGreetingText;->CAL_AGUSTUSAN:Ljava/util/Calendar;

    const/4 v6, 0x2

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 68
    sget-object v5, Lcom/petrux/ui/PetrUXGreetingText;->CAL_NEWYEARSEVE:Ljava/util/Calendar;

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 69
    sget-object v5, Lcom/petrux/ui/PetrUXGreetingText;->CAL_NEWYEARSEVE:Ljava/util/Calendar;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 70
    sget-object v5, Lcom/petrux/ui/PetrUXGreetingText;->CAL_AGUSTUSAN:Ljava/util/Calendar;

    const/4 v6, 0x5

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move-object v2, v5

    .line 73
    move-object v5, v2

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v3, v5

    .line 75
    move v5, v3

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    move v5, v3

    const/16 v6, 0x16

    if-lt v5, v6, :cond_3

    .line 76
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/petrux/ui/PetrUXGreetingText;->cuk:Landroid/widget/TextView;

    const-string v6, "\u0e23\u0e32\u0e15\u0e23\u0e35\u0e2a\u0e27\u0e31\u0e2a\u0e14\u0e34\u0e4c\u0e04\u0e48\u0e32"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    :goto_0
    sget-object v5, Lcom/petrux/ui/PetrUXGreetingText;->CAL_AGUSTUSAN:Ljava/util/Calendar;

    invoke-static {v5}, Lcom/petrux/ui/PetrUXGreetingText;->isItToday(Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 90
    move-object v5, v0

    iget-object v5, v5, Lcom/petrux/ui/PetrUXGreetingText;->cuk:Landroid/widget/TextView;

    const-string v6, "Happy Independence Day Indonesia!"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_2
    :goto_1
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/petrux/ui/PetrUXGreetingText;->mContext:Landroid/content/Context;

    return-void

    .line 79
    :cond_3
    move v5, v3

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    move v5, v3

    const/16 v6, 0xc

    if-ge v5, v6, :cond_4

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lcom/petrux/ui/PetrUXGreetingText;->cuk:Landroid/widget/TextView;

    const-string v6, "\u0e2d\u0e23\u0e38\u0e13\u0e2a\u0e27\u0e31\u0e2a\u0e14\u0e34\u0e4c\u0e04\u0e48\u0e32"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_4
    move v5, v3

    const/16 v6, 0x12

    if-lt v5, v6, :cond_5

    move v5, v3

    const/16 v6, 0x16

    if-ge v5, v6, :cond_5

    .line 83
    move-object v5, v0

    iget-object v5, v5, Lcom/petrux/ui/PetrUXGreetingText;->cuk:Landroid/widget/TextView;

    const-string v6, "\u0e23\u0e32\u0e15\u0e23\u0e35\u0e2a\u0e27\u0e31\u0e2a\u0e14\u0e34\u0e4c\u0e04\u0e48\u0e32"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_5
    move v5, v3

    const/16 v6, 0xc

    if-lt v5, v6, :cond_1

    move v5, v3

    const/16 v6, 0x12

    if-ge v5, v6, :cond_1

    .line 86
    move-object v5, v0

    iget-object v5, v5, Lcom/petrux/ui/PetrUXGreetingText;->cuk:Landroid/widget/TextView;

    const-string v6, "\u0e2a\u0e27\u0e31\u0e2a\u0e14\u0e35\u0e15\u0e2d\u0e19\u0e1a\u0e48\u0e32\u0e22\u0e04\u0e48\u0e32"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_6
    sget-object v5, Lcom/petrux/ui/PetrUXGreetingText;->CAL_NEWYEARSEVE:Ljava/util/Calendar;

    invoke-static {v5}, Lcom/petrux/ui/PetrUXGreetingText;->isItToday(Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    move v5, v3

    const/4 v6, 0x5

    if-lt v5, v6, :cond_7

    move v5, v3

    const/16 v6, 0x16

    if-lt v5, v6, :cond_2

    .line 93
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Lcom/petrux/ui/PetrUXGreetingText;->cuk:Landroid/widget/TextView;

    const-string v6, "Happy New Year, let\'s pray for a new wish "

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
