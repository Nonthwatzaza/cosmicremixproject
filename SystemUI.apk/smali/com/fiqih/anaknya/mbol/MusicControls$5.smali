.class Lcom/fiqih/anaknya/mbol/MusicControls$5;
.super Landroid/content/BroadcastReceiver;
.source "MusicControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiqih/anaknya/mbol/MusicControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fiqih/anaknya/mbol/MusicControls;


# direct methods
.method constructor <init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V
    .locals 0

    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/MusicControls$5;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "artist"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mArtist:Ljava/lang/String;
    invoke-static {v1}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$302(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "track"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mTrack:Ljava/lang/String;
    invoke-static {v1}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$402(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "playing"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mPlaying:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$502(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const-string v1, "songid"

    invoke-virtual {p2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    # setter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mSongId:J
    invoke-static {v1, v2}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$602(J)J

    iget-object v1, p0, Lcom/fiqih/anaknya/mbol/MusicControls$5;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    invoke-virtual {v1}, Lcom/fiqih/anaknya/mbol/MusicControls;->updateInfo()V

    return-void
.end method
