.class Lcom/music/MusicHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/music/MusicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/music/MusicHelper;


# direct methods
.method constructor <init>(Lcom/music/MusicHelper;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/music/MusicHelper$1;->this$0:Lcom/music/MusicHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/music/MusicHelper$1;->this$0:Lcom/music/MusicHelper;

    const-string v1, "track"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/music/MusicHelper;->mTrack:Ljava/lang/String;

    .line 37
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/music/MusicHelper;->mSongId:J

    .line 38
    iget-object v0, p0, Lcom/music/MusicHelper$1;->this$0:Lcom/music/MusicHelper;

    invoke-virtual {v0}, Lcom/music/MusicHelper;->updateInfo()V

    .line 39
    return-void
.end method
