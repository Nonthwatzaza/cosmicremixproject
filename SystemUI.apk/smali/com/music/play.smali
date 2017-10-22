.class public Lcom/music/play;
.super Landroid/widget/ImageView;
.source "play.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/music/play$100000000;
    }
.end annotation


# instance fields
.field cc:Landroid/content/Context;

.field public mControlStyle:I

.field manager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/music/play;->cc:Landroid/content/Context;

    .line 23
    move-object v4, v0

    move-object v5, v1

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, v4, Lcom/music/play;->manager:Landroid/media/AudioManager;

    .line 24
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mControlStyle"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/music/play;->mControlStyle:I

    .line 25
    move-object v4, v0

    invoke-virtual {v4}, Lcom/music/play;->whaticon()V

    .line 27
    move-object v4, v0

    new-instance v5, Lcom/music/play$100000000;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/music/play$100000000;-><init>(Lcom/music/play;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v4, v5}, Lcom/music/play;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public whaticon()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/play;->manager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    move-object v2, v0

    const v3, 0x7f0203b5

    invoke-virtual {v2, v3}, Lcom/music/play;->setImageResource(I)V

    .line 41
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    const v3, 0x7f0203b4

    invoke-virtual {v2, v3}, Lcom/music/play;->setImageResource(I)V

    goto :goto_0
.end method

.method public whaticon2()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/play;->manager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    move-object v2, v0

    const v3, 0x7f0203b5

    invoke-virtual {v2, v3}, Lcom/music/play;->setImageResource(I)V

    .line 49
    move-object v2, v0

    iget v2, v2, Lcom/music/play;->mControlStyle:I

    const/4 v3, 0x0

    if-ne v2, v3, :cond_0

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lcom/music/play;->cc:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "poke"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    move-object v2, v0

    const v3, 0x7f0203b4

    invoke-virtual {v2, v3}, Lcom/music/play;->setImageResource(I)V

    .line 56
    move-object v2, v0

    iget v2, v2, Lcom/music/play;->mControlStyle:I

    const/4 v3, 0x0

    if-ne v2, v3, :cond_0

    .line 57
    move-object v2, v0

    iget-object v2, v2, Lcom/music/play;->cc:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "poke"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method
