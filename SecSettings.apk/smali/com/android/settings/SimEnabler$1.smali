.class Lcom/android/settings/SimEnabler$1;
.super Landroid/os/Handler;
.source "SimEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SimEnabler;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/SimEnabler$1;->this$0:Lcom/android/settings/SimEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SimEnabler$1;->this$0:Lcom/android/settings/SimEnabler;

    # invokes: Lcom/android/settings/SimEnabler;->onSimModeChanged()V
    invoke-static {v0}, Lcom/android/settings/SimEnabler;->access$000(Lcom/android/settings/SimEnabler;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
