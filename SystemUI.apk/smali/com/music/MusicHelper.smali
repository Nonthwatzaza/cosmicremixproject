.class public Lcom/music/MusicHelper;
.super Landroid/view/View;
.source "MusicHelper.java"


# static fields
.field public static mSongId:J


# instance fields
.field public am:Landroid/media/AudioManager;

.field public mMusicReceiver:Landroid/content/BroadcastReceiver;

.field public mTrack:Ljava/lang/String;

.field public usb:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/music/MusicHelper;->mSongId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/music/MusicHelper;->mTrack:Ljava/lang/String;

    .line 32
    new-instance v2, Lcom/music/MusicHelper$1;

    invoke-direct {v2, p0}, Lcom/music/MusicHelper$1;-><init>(Lcom/music/MusicHelper;)V

    iput-object v2, p0, Lcom/music/MusicHelper;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    new-instance v2, Lcom/music/MusicHelper$2;

    invoke-direct {v2, p0}, Lcom/music/MusicHelper$2;-><init>(Lcom/music/MusicHelper;)V

    iput-object v2, p0, Lcom/music/MusicHelper;->usb:Landroid/content/BroadcastReceiver;

    .line 20
    iput-object p1, p0, Lcom/music/MusicHelper;->mContext:Landroid/content/Context;

    .line 21
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/music/MusicHelper;->am:Landroid/media/AudioManager;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .local v0, "iF":Landroid/content/IntentFilter;
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/music/MusicHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/music/MusicHelper;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .local v1, "iF2":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/music/MusicHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/music/MusicHelper;->usb:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/music/MusicHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/music/MusicHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/music/MusicHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public updateInfo()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/music/MusicHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "trackname"

    iget-object v2, p0, Lcom/music/MusicHelper;->mTrack:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    iget-object v0, p0, Lcom/music/MusicHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "id"

    sget-wide v2, Lcom/music/MusicHelper;->mSongId:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 53
    return-void
.end method
