.class Lcom/evilution/ticker/Ticker$100000000;
.super Landroid/content/BroadcastReceiver;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evilution/ticker/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/evilution/ticker/Ticker;


# direct methods
.method constructor <init>(Lcom/evilution/ticker/Ticker;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/evilution/ticker/Ticker$100000000;->this$0:Lcom/evilution/ticker/Ticker;

    return-void
.end method

.method static access$0(Lcom/evilution/ticker/Ticker$100000000;)Lcom/evilution/ticker/Ticker;
    .locals 1

    iget-object v0, p0, Lcom/evilution/ticker/Ticker$100000000;->this$0:Lcom/evilution/ticker/Ticker;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.evilution.updateTicker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evilution/ticker/Ticker$100000000;->this$0:Lcom/evilution/ticker/Ticker;

    invoke-virtual {v0}, Lcom/evilution/ticker/Ticker;->updateTicker()V

    :cond_0
    return-void
.end method
