.class public Lfx/dzolcp/Speed;
.super Landroid/widget/TextView;
.source "Speed.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mAttached:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastTime:J

.field private final mRunnable:Ljava/lang/Runnable;

.field private mTrafik:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfx/dzolcp/Speed;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lfx/dzolcp/Speed$1;

    invoke-direct {v0, p0}, Lfx/dzolcp/Speed$1;-><init>(Lfx/dzolcp/Speed;)V

    iput-object v0, p0, Lfx/dzolcp/Speed;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lfx/dzolcp/Speed$2;

    invoke-direct {v0, p0}, Lfx/dzolcp/Speed$2;-><init>(Lfx/dzolcp/Speed;)V

    iput-object v0, p0, Lfx/dzolcp/Speed;->mRunnable:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lfx/dzolcp/Speed;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "att"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfx/dzolcp/Speed;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lfx/dzolcp/Speed$1;

    invoke-direct {v0, p0}, Lfx/dzolcp/Speed$1;-><init>(Lfx/dzolcp/Speed;)V

    iput-object v0, p0, Lfx/dzolcp/Speed;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lfx/dzolcp/Speed$2;

    invoke-direct {v0, p0}, Lfx/dzolcp/Speed$2;-><init>(Lfx/dzolcp/Speed;)V

    iput-object v0, p0, Lfx/dzolcp/Speed;->mRunnable:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lfx/dzolcp/Speed;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static Count(JZ)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # J
    .param p2, "si"    # Z

    .prologue
    .line 133
    if-eqz p2, :cond_0

    const/16 v2, 0x3e8

    .line 134
    .local v2, "unit":I
    :goto_0
    int-to-long v3, v2

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    div-long v5, p0, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "K/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    :goto_1
    return-object v3

    .line 133
    .end local v2    # "unit":I
    :cond_0
    const/16 v2, 0x400

    goto :goto_0

    .line 136
    .restart local v2    # "unit":I
    :cond_1
    long-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-int v0, v3

    .line 137
    .local v0, "exp":I
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v3, "kMGTPE"

    :goto_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    if-eqz p2, :cond_3

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "pre":Ljava/lang/String;
    const-string v3, "%.1f %S/s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v6, p0

    int-to-double v8, v2

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 137
    .end local v1    # "pre":Ljava/lang/String;
    :cond_2
    const-string v3, "KMGTPE"

    goto :goto_2

    .line 138
    :cond_3
    const-string v3, "i"

    goto :goto_3
.end method

.method static synthetic access$0(Lfx/dzolcp/Speed;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lfx/dzolcp/Speed;->updateState()V

    return-void
.end method

.method static synthetic access$1(Lfx/dzolcp/Speed;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lfx/dzolcp/Speed;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$2(Lfx/dzolcp/Speed;J)V
    .locals 0

    .prologue
    .line 20
    iput-wide p1, p0, Lfx/dzolcp/Speed;->mLastTime:J

    return-void
.end method

.method static synthetic access$3(Lfx/dzolcp/Speed;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lfx/dzolcp/Speed;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lfx/dzolcp/Speed;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lfx/dzolcp/Speed;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private updateState()V
    .locals 8

    .prologue
    const-wide/16 v5, -0x1

    .line 77
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 79
    .local v0, "mStartRX":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 81
    .local v2, "mStartTX":J
    cmp-long v4, v0, v5

    if-eqz v4, :cond_0

    .line 82
    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 83
    :cond_0
    const-string v4, "dzolcpTraffic"

    const-string v5, "Not Support"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-boolean v4, p0, Lfx/dzolcp/Speed;->mTrafik:Z

    if-eqz v4, :cond_2

    .line 86
    iget-object v4, p0, Lfx/dzolcp/Speed;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lfx/dzolcp/Speed;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v4, p0, Lfx/dzolcp/Speed;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lfx/dzolcp/Speed;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected hidenshow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-boolean v0, p0, Lfx/dzolcp/Speed;->mTrafik:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfx/dzolcp/Speed;->mTrafik:Z

    .line 101
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfx/dzolcp/Speed;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    iput-boolean v1, p0, Lfx/dzolcp/Speed;->mTrafik:Z

    .line 106
    invoke-virtual {p0, v1}, Lfx/dzolcp/Speed;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 37
    iget-boolean v1, p0, Lfx/dzolcp/Speed;->mAttached:Z

    if-nez v1, :cond_0

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfx/dzolcp/Speed;->mAttached:Z

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "fx.dzolcp.Traffic"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lfx/dzolcp/Speed;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfx/dzolcp/Speed;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lfx/dzolcp/Speed;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 42
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lfx/dzolcp/Speed;->mLastTime:J

    .line 45
    invoke-direct {p0}, Lfx/dzolcp/Speed;->updateState()V

    .line 49
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 54
    iget-boolean v0, p0, Lfx/dzolcp/Speed;->mAttached:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lfx/dzolcp/Speed;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfx/dzolcp/Speed;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfx/dzolcp/Speed;->mAttached:Z

    .line 58
    :cond_0
    return-void
.end method
