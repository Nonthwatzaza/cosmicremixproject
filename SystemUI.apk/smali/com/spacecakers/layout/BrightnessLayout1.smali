.class public Lcom/spacecakers/layout/BrightnessLayout1;
.super Landroid/widget/LinearLayout;
.source "BrightnessLayout1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spacecakers/layout/BrightnessLayout1$SettingsObserver;
    }
.end annotation


# instance fields
.field cc:Landroid/content/Context;

.field public mBrightnessController1:I

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object p1, p0, Lcom/spacecakers/layout/BrightnessLayout1;->cc:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mBrightnessController1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/spacecakers/layout/BrightnessLayout1;->mBrightnessController1:I

    .line 20
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/spacecakers/layout/BrightnessLayout1;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lcom/spacecakers/layout/BrightnessLayout1$SettingsObserver;

    iget-object v1, p0, Lcom/spacecakers/layout/BrightnessLayout1;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/spacecakers/layout/BrightnessLayout1$SettingsObserver;-><init>(Lcom/spacecakers/layout/BrightnessLayout1;Landroid/os/Handler;)V

    .line 22
    .local v0, "settingsObserver":Lcom/spacecakers/layout/BrightnessLayout1$SettingsObserver;
    invoke-virtual {v0}, Lcom/spacecakers/layout/BrightnessLayout1$SettingsObserver;->observe()V

    .line 23
    invoke-virtual {p0}, Lcom/spacecakers/layout/BrightnessLayout1;->whatbehavior()V

    .line 24
    return-void
.end method


# virtual methods
.method public whatbehavior()V
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/spacecakers/layout/BrightnessLayout1;->mBrightnessController1:I

    if-nez v0, :cond_1

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spacecakers/layout/BrightnessLayout1;->setVisibility(I)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/spacecakers/layout/BrightnessLayout1;->mBrightnessController1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/spacecakers/layout/BrightnessLayout1;->setVisibility(I)V

    goto :goto_0
.end method
