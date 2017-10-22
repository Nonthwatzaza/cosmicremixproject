.class public Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;
.super Landroid/widget/LinearLayout;
.source "StatusBarJellyHeaderView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private mClockView:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mUpdating:Z

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView$1;-><init>(Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->initViews()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mUpdating:Z

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView$1;-><init>(Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->initViews()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->updateViews()V

    return-void
.end method

.method private getTimeText()[Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v5, 0xc

    const/4 v9, 0x1

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 112
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 113
    .local v3, "min":I
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 114
    .local v2, "hour":I
    if-le v2, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eq v4, v9, :cond_0

    .line 115
    add-int/lit8 v2, v2, -0xc

    .line 116
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x9

    if-le v3, v7, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EEEE"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    return-object v4

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v2, -0x2

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->getTimeText()[Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "str":[Ljava/lang/String;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x8

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 56
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mClockView:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mClockView:Landroid/widget/TextView;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mClockView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mClockView:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mClockView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mDateView:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mDateView:Landroid/widget/TextView;

    const-string v3, "#cccccc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mDateView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mDateView:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mClockView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->addView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->addView(Landroid/view/View;)V

    .line 71
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->setGravity(I)V

    .line 72
    return-void
.end method

.method private final updateViews()V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->getTimeText()[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "str":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mClockView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mDateView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->invalidate()V

    .line 92
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->setUpdates(Z)V

    .line 78
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->setUpdates(Z)V

    .line 84
    return-void
.end method

.method setUpdates(Z)V
    .locals 4
    .param p1, "update"    # Z

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mUpdating:Z

    if-eq p1, v1, :cond_0

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mUpdating:Z

    .line 97
    if-eqz p1, :cond_1

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->updateViews()V

    .line 107
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
