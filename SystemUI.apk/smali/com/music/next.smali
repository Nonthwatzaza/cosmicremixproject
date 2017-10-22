.class public Lcom/music/next;
.super Landroid/widget/ImageView;
.source "next.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/music/next$SettingsObserver;,
        Lcom/music/next$100000000;
    }
.end annotation


# instance fields
.field public mControlStyle:I

.field mHandler:Landroid/os/Handler;

.field manager:Landroid/media/AudioManager;

.field public puke:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    move-object v5, v0

    const v6, 0x7f0203b3

    invoke-virtual {v5, v6}, Lcom/music/next;->setImageResource(I)V

    .line 23
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mControlStyle"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/music/next;->mControlStyle:I

    .line 24
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "poke"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/music/next;->puke:I

    .line 25
    move-object v5, v0

    move-object v6, v1

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, v5, Lcom/music/next;->manager:Landroid/media/AudioManager;

    .line 27
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/music/next;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v5, Lcom/music/next$SettingsObserver;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/music/next;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8}, Lcom/music/next$SettingsObserver;-><init>(Lcom/music/next;Landroid/os/Handler;)V

    move-object v3, v5

    .line 29
    move-object v5, v3

    invoke-virtual {v5}, Lcom/music/next$SettingsObserver;->observe()V

    .line 31
    move-object v5, v0

    invoke-virtual {v5}, Lcom/music/next;->WhatStyle()V

    .line 33
    move-object v5, v0

    new-instance v6, Lcom/music/next$100000000;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/music/next$100000000;-><init>(Lcom/music/next;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5, v6}, Lcom/music/next;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public WhatStyle()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/next;->mControlStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/next;->setVisibility(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/music/next;->mControlStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/next;->setVisibility(I)V

    goto :goto_0
.end method

.method public poke()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/next;->puke:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/next;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/next;->setVisibility(I)V

    goto :goto_0
.end method
