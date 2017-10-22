.class Lcom/music/MusicHelper$2;
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
    .line 42
    iput-object p1, p0, Lcom/music/MusicHelper$2;->this$0:Lcom/music/MusicHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 46
    .local v0, "sb":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/music/MusicHelper$2;->this$0:Lcom/music/MusicHelper;

    # getter for: Lcom/music/MusicHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/music/MusicHelper;->access$000(Lcom/music/MusicHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
