.class Lfx/dzolcp/Speed$1;
.super Landroid/content/BroadcastReceiver;
.source "Speed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfx/dzolcp/Speed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfx/dzolcp/Speed;


# direct methods
.method constructor <init>(Lfx/dzolcp/Speed;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lfx/dzolcp/Speed$1;->this$0:Lfx/dzolcp/Speed;

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lfx/dzolcp/Speed$1;->this$0:Lfx/dzolcp/Speed;

    # invokes: Lfx/dzolcp/Speed;->updateState()V
    invoke-static {v1}, Lfx/dzolcp/Speed;->access$0(Lfx/dzolcp/Speed;)V

    .line 68
    :cond_0
    const-string v1, "fx.dzolcp.Traffic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lfx/dzolcp/Speed$1;->this$0:Lfx/dzolcp/Speed;

    invoke-virtual {v1}, Lfx/dzolcp/Speed;->hidenshow()V

    .line 70
    iget-object v1, p0, Lfx/dzolcp/Speed$1;->this$0:Lfx/dzolcp/Speed;

    # invokes: Lfx/dzolcp/Speed;->updateState()V
    invoke-static {v1}, Lfx/dzolcp/Speed;->access$0(Lfx/dzolcp/Speed;)V

    .line 72
    :cond_1
    return-void
.end method
