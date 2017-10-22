.class Lcom/music/next$2;
.super Landroid/content/BroadcastReceiver;
.source "next.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/music/next;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/music/next;


# direct methods
.method constructor <init>(Lcom/music/next;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/music/next$2;->this$0:Lcom/music/next;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    const-string v1, "poke"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "aa":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/music/next$2;->this$0:Lcom/music/next;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/music/next;->setVisibility(I)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/music/next$2;->this$0:Lcom/music/next;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/music/next;->setVisibility(I)V

    goto :goto_0
.end method
