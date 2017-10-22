.class public Lcom/music/trackname;
.super Landroid/widget/TextView;
.source "trackname.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/music/trackname$SettingsObserver;
    }
.end annotation


# instance fields
.field cc:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field man:Landroid/media/AudioManager;

.field public trakname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/music/trackname;->cc:Landroid/content/Context;

    .line 24
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/music/trackname;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v5, Lcom/music/trackname$SettingsObserver;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/music/trackname;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8}, Lcom/music/trackname$SettingsObserver;-><init>(Lcom/music/trackname;Landroid/os/Handler;)V

    move-object v3, v5

    .line 26
    move-object v5, v3

    invoke-virtual {v5}, Lcom/music/trackname$SettingsObserver;->observe()V

    .line 27
    move-object v5, v0

    invoke-virtual {v5}, Lcom/music/trackname;->updateInfo()V

    return-void
.end method


# virtual methods
.method public updateInfo()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/trackname;->cc:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "trackname"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/music/trackname;->trakname:Ljava/lang/String;

    .line 49
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/trackname;->cc:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v2, Lcom/music/trackname;->man:Landroid/media/AudioManager;

    .line 50
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/trackname;->trakname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/music/trackname;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
