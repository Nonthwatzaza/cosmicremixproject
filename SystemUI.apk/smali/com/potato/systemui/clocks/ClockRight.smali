.class public Lcom/potato/systemui/clocks/ClockRight;
.super Lcom/potato/systemui/clocks/Clock;
.source "ClockRight.java"


# instance fields
.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/potato/systemui/clocks/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/potato/systemui/clocks/ClockRight$1;

    invoke-direct {v0, p0}, Lcom/potato/systemui/clocks/ClockRight$1;-><init>(Lcom/potato/systemui/clocks/ClockRight;)V

    iput-object v0, p0, Lcom/potato/systemui/clocks/ClockRight;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    return-void
.end method


# virtual methods
.method public CenterSetap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockRight;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_style"

    .line 59
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/ClockRight;->style:I

    .line 61
    iget v0, p0, Lcom/potato/systemui/clocks/ClockRight;->style:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/ClockRight;->setVisibility(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/ClockRight;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 24
    invoke-super {p0}, Lcom/potato/systemui/clocks/Clock;->onAttachedToWindow()V

    .line 25
    iget-boolean v1, p0, Lcom/potato/systemui/clocks/ClockRight;->mAttached:Z

    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/systemui/clocks/ClockRight;->mAttached:Z

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.potato.clock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockRight;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/systemui/clocks/ClockRight;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockRight;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 31
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockRight;->CenterSetap()V

    .line 32
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/potato/systemui/clocks/Clock;->onDetachedFromWindow()V

    .line 37
    iget-boolean v0, p0, Lcom/potato/systemui/clocks/ClockRight;->mAttached:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockRight;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/potato/systemui/clocks/ClockRight;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/potato/systemui/clocks/ClockRight;->mAttached:Z

    .line 41
    :cond_0
    return-void
.end method
