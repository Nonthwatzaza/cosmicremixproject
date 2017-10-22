.class Lcom/android/settings/ActivateThread;
.super Ljava/lang/Thread;
.source "SimStatePreference.java"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 833
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 834
    iput-object p1, p0, Lcom/android/settings/ActivateThread;->mHandler:Landroid/os/Handler;

    .line 835
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 838
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 839
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 842
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ActivateThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 847
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
