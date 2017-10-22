.class public Lcom/music/MusicControl;
.super Landroid/widget/LinearLayout;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/music/MusicControl$SettingsObserver;
    }
.end annotation


# instance fields
.field cc:Landroid/content/Context;

.field public mBehavior:I

.field mHandler:Landroid/os/Handler;

.field manager:Landroid/media/AudioManager;


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

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/music/MusicControl;->cc:Landroid/content/Context;

    .line 24
    move-object v5, v0

    move-object v6, v1

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, v5, Lcom/music/MusicControl;->manager:Landroid/media/AudioManager;

    .line 25
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mBehavior"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/music/MusicControl;->mBehavior:I

    .line 26
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/music/MusicControl;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v5, Lcom/music/MusicControl$SettingsObserver;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8}, Lcom/music/MusicControl$SettingsObserver;-><init>(Lcom/music/MusicControl;Landroid/os/Handler;)V

    move-object v3, v5

    .line 28
    move-object v5, v3

    invoke-virtual {v5}, Lcom/music/MusicControl$SettingsObserver;->observe()V

    .line 29
    move-object v5, v0

    invoke-virtual {v5}, Lcom/music/MusicControl;->whatbehavior()V

    return-void
.end method


# virtual methods
.method public sendMediaButtonEvent(I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move-wide v2, v9

    .line 69
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string v11, "android.intent.action.MEDIA_BUTTON"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v4, v9

    .line 70
    new-instance v9, Landroid/view/KeyEvent;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-wide v11, v2

    move-wide v13, v2

    const/4 v15, 0x0

    move/from16 v16, v1

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object v5, v9

    .line 71
    move-object v9, v4

    const-string v10, "android.intent.extra.KEY_EVENT"

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v9

    .line 72
    move-object v9, v0

    invoke-virtual {v9}, Lcom/music/MusicControl;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v4

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 74
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string v11, "android.intent.action.MEDIA_BUTTON"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v6, v9

    .line 75
    new-instance v9, Landroid/view/KeyEvent;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-wide v11, v2

    move-wide v13, v2

    const/4 v15, 0x1

    move/from16 v16, v1

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object v7, v9

    .line 76
    move-object v9, v6

    const-string v10, "android.intent.extra.KEY_EVENT"

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v9

    .line 77
    move-object v9, v0

    invoke-virtual {v9}, Lcom/music/MusicControl;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public whatbehavior()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/MusicControl;->mBehavior:I

    const/4 v3, 0x0

    if-ne v2, v3, :cond_1

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/MusicControl;->setVisibility(I)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/music/MusicControl;->mBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/MusicControl;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_2
    move-object v2, v0

    iget v2, v2, Lcom/music/MusicControl;->mBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/music/MusicControl;->manager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/MusicControl;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_3
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/music/MusicControl;->setVisibility(I)V

    goto :goto_0
.end method
