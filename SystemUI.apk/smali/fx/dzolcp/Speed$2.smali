.class Lfx/dzolcp/Speed$2;
.super Ljava/lang/Object;
.source "Speed.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lfx/dzolcp/Speed$2;->this$0:Lfx/dzolcp/Speed;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 115
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 116
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    .line 115
    add-long v0, v4, v6

    .line 117
    .local v0, "l33":J
    iget-object v4, p0, Lfx/dzolcp/Speed$2;->this$0:Lfx/dzolcp/Speed;

    # getter for: Lfx/dzolcp/Speed;->mLastTime:J
    invoke-static {v4}, Lfx/dzolcp/Speed;->access$1(Lfx/dzolcp/Speed;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 119
    .local v2, "lok":J
    iget-object v4, p0, Lfx/dzolcp/Speed$2;->this$0:Lfx/dzolcp/Speed;

    invoke-static {v2, v3, v8}, Lfx/dzolcp/Speed;->Count(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfx/dzolcp/Speed;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lfx/dzolcp/Speed$2;->this$0:Lfx/dzolcp/Speed;

    invoke-static {v4, v0, v1}, Lfx/dzolcp/Speed;->access$2(Lfx/dzolcp/Speed;J)V

    .line 121
    const-string v4, "TRAFFIC"

    invoke-static {v2, v3, v8}, Lfx/dzolcp/Speed;->Count(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v4, p0, Lfx/dzolcp/Speed$2;->this$0:Lfx/dzolcp/Speed;

    # getter for: Lfx/dzolcp/Speed;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lfx/dzolcp/Speed;->access$3(Lfx/dzolcp/Speed;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lfx/dzolcp/Speed$2;->this$0:Lfx/dzolcp/Speed;

    # getter for: Lfx/dzolcp/Speed;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lfx/dzolcp/Speed;->access$4(Lfx/dzolcp/Speed;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method
