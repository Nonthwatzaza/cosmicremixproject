.class Lcom/android/systemui/statusbar/TogelMusrik$1;
.super Landroid/content/BroadcastReceiver;
.source "TogelMusrik.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/TogelMusrik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/TogelMusrik;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/TogelMusrik;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/TogelMusrik$1;->this$0:Lcom/android/systemui/statusbar/TogelMusrik;

    .line 122
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/TogelMusrik$1;->this$0:Lcom/android/systemui/statusbar/TogelMusrik;

    # invokes: Lcom/android/systemui/statusbar/TogelMusrik;->updateLeot()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/TogelMusrik;->access$0(Lcom/android/systemui/statusbar/TogelMusrik;)V

    .line 130
    :cond_0
    return-void
.end method
