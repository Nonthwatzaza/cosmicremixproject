.class Lcom/android/systemui/statusbar/StatusBarJellyHeaderView$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarJellyHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView$1;->this$0:Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView$1;->this$0:Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;

    # invokes: Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->updateViews()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;->access$000(Lcom/android/systemui/statusbar/StatusBarJellyHeaderView;)V

    .line 34
    :cond_1
    return-void
.end method
