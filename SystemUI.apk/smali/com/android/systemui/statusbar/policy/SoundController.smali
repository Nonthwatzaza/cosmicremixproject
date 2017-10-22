.class public Lcom/android/systemui/statusbar/policy/SoundController;
.super Landroid/content/BroadcastReceiver;
.source "SoundController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.SoundController"


# instance fields
.field private mContentDescriptionId:I

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconViews:Ljava/util/ArrayList;

    .line 38
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconId:I

    .line 39
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContentDescriptionId:I

    .line 40
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mEnabled:Z

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundController;->updateVolume()V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SoundController;->refreshViews()V

    .line 49
    return-void
.end method

.method private final updateVolume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 65
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 66
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 67
    .local v2, "ringerMode":I
    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mEnabled:Z

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "contentDescription":Ljava/lang/String;
    if-ne v2, v4, :cond_2

    .line 71
    const v3, 0x7f020123

    iput v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconId:I

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_1
    return-void

    .line 67
    .end local v1    # "contentDescription":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 74
    .restart local v1    # "contentDescription":Ljava/lang/String;
    :cond_2
    const v3, 0x7f020121

    iput v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconId:I

    .line 75
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundController;->updateVolume()V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SoundController;->refreshViews()V

    .line 62
    return-void
.end method

.method public refreshViews()V
    .locals 5

    .prologue
    .line 82
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 84
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 85
    .local v2, "v":Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconId:I

    if-eqz v3, :cond_0

    .line 87
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mEnabled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContentDescriptionId:I

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/16 v3, 0x8

    goto :goto_1

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/SoundController;->mContentDescriptionId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 94
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method
