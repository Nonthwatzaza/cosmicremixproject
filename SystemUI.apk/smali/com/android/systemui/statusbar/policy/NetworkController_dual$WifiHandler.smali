.class Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;
.super Landroid/os/Handler;
.source "NetworkController_dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController_dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)V
    .locals 0

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1983
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2003
    :cond_0
    :goto_0
    return-void

    .line 1985
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 1986
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1989
    :cond_1
    const-string v0, "NetworkController_dual"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1993
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivity:I

    .line 1995
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViewsforwifi()V

    .line 1996
    const-string v0, "NetworkController_dual"

    const-string v1, "refreshViewsforwifi() "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1983
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
