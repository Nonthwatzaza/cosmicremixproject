.class public Lcom/fiqih/anaknya/mbol/MusicControls;
.super Landroid/widget/FrameLayout;
.source "MusicControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final TAG:Ljava/lang/String; = "MusicControls"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static mArtist:Ljava/lang/String;

.field private static mPlaying:Ljava/lang/Boolean;

.field private static mSongId:J

.field private static mTrack:Ljava/lang/String;


# instance fields
.field private audio:Landroid/media/AudioManager;

.field private mAnim:Landroid/widget/ImageView;

.field private mAnimStanby:Landroid/widget/ImageView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContext:Landroid/content/Context;

.field private mForwardIcon:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMusicActive:Z

.field private mMusicReceiver:Landroid/content/BroadcastReceiver;

.field private mNowPlayingInfo:Landroid/widget/TextView;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPauseIcon:Landroid/widget/ImageView;

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mRewindIcon:Landroid/widget/ImageView;

.field private mSeekEnabled:Z

.field private mTempDate:Ljava/util/Date;

.field mVolumeReceiver:Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;

.field private seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

.field private seekvoltext:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/fiqih/anaknya/mbol/MusicControls;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/fiqih/anaknya/mbol/MusicControls;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    sput-object v2, Lcom/fiqih/anaknya/mbol/MusicControls;->mArtist:Ljava/lang/String;

    sput-object v2, Lcom/fiqih/anaknya/mbol/MusicControls;->mTrack:Ljava/lang/String;

    sput-object v2, Lcom/fiqih/anaknya/mbol/MusicControls;->mPlaying:Ljava/lang/Boolean;

    sput-wide v5, Lcom/fiqih/anaknya/mbol/MusicControls;->mSongId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mIsMusicActive:Z

    new-instance v1, Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;

    invoke-direct {v1, p0}, Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;-><init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V

    iput-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mVolumeReceiver:Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;

    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mTempDate:Ljava/util/Date;

    new-instance v1, Lcom/fiqih/anaknya/mbol/MusicControls$5;

    invoke-direct {v1, p0}, Lcom/fiqih/anaknya/mbol/MusicControls$5;-><init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V

    iput-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static NowPlayingAlbum()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fiqih/anaknya/mbol/MusicControls;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fiqih/anaknya/mbol/MusicControls;->mTrack:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Track"

    goto :goto_0
.end method

.method public static NowPlayingArtist()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fiqih/anaknya/mbol/MusicControls;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fiqih/anaknya/mbol/MusicControls;->mArtist:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Artist"

    goto :goto_0
.end method

.method public static SongId()J
    .locals 2

    sget-wide v0, Lcom/fiqih/anaknya/mbol/MusicControls;->mSongId:J

    return-wide v0
.end method

.method static synthetic access$000(Lcom/fiqih/anaknya/mbol/MusicControls;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fiqih/anaknya/mbol/MusicControls;->sendMediaButtonEvent(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPlayIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPauseIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$220(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$222(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAnimStanby:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mTrack:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPlaying:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$602(J)J
    .locals 0

    sput-wide p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mSongId:J

    return-wide p0
.end method

.method static synthetic access$8300(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvoltext:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 1

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAudioService:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAudioService:Landroid/media/IAudioService;

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAudioService:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method private seekvol()V
    .locals 12

    const/4 v11, 0x3

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    const v5, 0x7f0d015f

    invoke-virtual {p0, v5}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    iput-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    invoke-virtual {v1, v7}, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;->setKeyProgressIncrement(I)V

    iget-object v5, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    invoke-virtual {v5, v11}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    invoke-virtual {v1, v5}, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    invoke-virtual {v5, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    invoke-virtual {v1, v5}, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    new-instance v5, Lcom/fiqih/anaknya/mbol/MusicControls$6;

    invoke-direct {v5, p0}, Lcom/fiqih/anaknya/mbol/MusicControls$6;-><init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V

    invoke-virtual {v1, v5}, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v5, 0x7f0d015e

    invoke-virtual {p0, v5}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvoltext:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvoltext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private sendMediaButtonEvent(I)V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private setAudioManager()V
    .locals 6

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private setVolumeReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mVolumeReceiver:Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mVolumeReceiver:Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/fiqih/anaknya/mbol/MusicControls$VolumeTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->setupControls()V

    invoke-direct {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol()V

    invoke-direct {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->setVolumeReceiver()V

    invoke-direct {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->setAudioManager()V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method setSeekBarsEnabled(Z)V
    .locals 2

    const/4 v0, 0x1

    iget-boolean v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mSeekEnabled:Z

    iput-boolean p1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mSeekEnabled:Z

    return-void
.end method

.method public setupControls()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "MusicControls"

    const-string v3, "Setting Up Music Controls"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030055

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/fiqih/anaknya/mbol/MusicControls;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/fiqih/anaknya/mbol/MusicControls;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/fiqih/anaknya/mbol/MusicControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->updateControls()V

    return-void
.end method

.method public updateControls()V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    const-string v3, "MusicControls"

    const-string v0, "MusicControls"

    const-string v0, "Updating Music Controls Visibility"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mIsMusicActive:Z

    const v0, 0x7f0d0163

    invoke-virtual {p0, v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPauseIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0162

    invoke-virtual {p0, v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPlayIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPlayIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPauseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0d0161

    invoke-virtual {p0, v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mRewindIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d015d

    invoke-virtual {p0, v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAnim:Landroid/widget/ImageView;

    const v0, 0x7f0d015c

    invoke-virtual {p0, v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mAnimStanby:Landroid/widget/ImageView;

    const v0, 0x7f0d0164

    invoke-virtual {p0, v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mForwardIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d015b

    invoke-virtual {p0, v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mNowPlayingInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mNowPlayingInfo:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-boolean v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mIsMusicActive:Z

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->updateInfo()V

    return-void
.end method

.method public updateInfo()V
    .locals 8

    const-string v3, "MusicControls"

    const-string v4, "Updating Music Controls Info"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/fiqih/anaknya/mbol/MusicControls;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/fiqih/anaknya/mbol/MusicControls;->SongId()J

    move-result-wide v4

    invoke-static {}, Lcom/fiqih/anaknya/mbol/MusicControls;->NowPlayingArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/fiqih/anaknya/mbol/MusicControls;->NowPlayingAlbum()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mNowPlayingInfo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPauseIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/fiqih/anaknya/mbol/MusicControls$1;

    invoke-direct {v4, p0}, Lcom/fiqih/anaknya/mbol/MusicControls$1;-><init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mPlayIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/fiqih/anaknya/mbol/MusicControls$2;

    invoke-direct {v4, p0}, Lcom/fiqih/anaknya/mbol/MusicControls$2;-><init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mRewindIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/fiqih/anaknya/mbol/MusicControls$3;

    invoke-direct {v4, p0}, Lcom/fiqih/anaknya/mbol/MusicControls$3;-><init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->mForwardIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/fiqih/anaknya/mbol/MusicControls$4;

    invoke-direct {v4, p0}, Lcom/fiqih/anaknya/mbol/MusicControls$4;-><init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateVolumeSliders()V
    .locals 8

    const v5, 0x7f0d015f

    invoke-virtual {p0, v5}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    iput-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    iget-object v5, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    invoke-virtual {v1, v5}, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;->setProgress(I)V

    const v5, 0x7f0d015e

    invoke-virtual {p0, v5}, Lcom/fiqih/anaknya/mbol/MusicControls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvoltext:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvoltext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol:Lcom/fiqih/anaknya/mbol/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/fiqih/anaknya/mbol/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
