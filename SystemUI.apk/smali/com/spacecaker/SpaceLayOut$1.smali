.class Lcom/spacecaker/SpaceLayOut$1;
.super Landroid/content/BroadcastReceiver;
.source "SpaceLayOut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spacecaker/SpaceLayOut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spacecaker/SpaceLayOut;


# direct methods
.method constructor <init>(Lcom/spacecaker/SpaceLayOut;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spacecaker/SpaceLayOut$1;->this$0:Lcom/spacecaker/SpaceLayOut;

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/spacecaker/SpaceLayOut$1;->this$0:Lcom/spacecaker/SpaceLayOut;

    # getter for: Lcom/spacecaker/SpaceLayOut;->UPDATE:Ljava/lang/String;
    invoke-static {v1}, Lcom/spacecaker/SpaceLayOut;->access$0(Lcom/spacecaker/SpaceLayOut;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/spacecaker/SpaceLayOut$1;->this$0:Lcom/spacecaker/SpaceLayOut;

    const-string v2, "LEOT_YANG_MANA_NIH"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/spacecaker/SpaceLayOut;->access$1(Lcom/spacecaker/SpaceLayOut;Z)V

    .line 28
    iget-object v1, p0, Lcom/spacecaker/SpaceLayOut$1;->this$0:Lcom/spacecaker/SpaceLayOut;

    iget-object v2, p0, Lcom/spacecaker/SpaceLayOut$1;->this$0:Lcom/spacecaker/SpaceLayOut;

    # getter for: Lcom/spacecaker/SpaceLayOut;->LAYOUT:Z
    invoke-static {v2}, Lcom/spacecaker/SpaceLayOut;->access$2(Lcom/spacecaker/SpaceLayOut;)Z

    move-result v2

    # invokes: Lcom/spacecaker/SpaceLayOut;->update(Z)V
    invoke-static {v1, v2}, Lcom/spacecaker/SpaceLayOut;->access$3(Lcom/spacecaker/SpaceLayOut;Z)V

    .line 30
    :cond_0
    return-void
.end method
