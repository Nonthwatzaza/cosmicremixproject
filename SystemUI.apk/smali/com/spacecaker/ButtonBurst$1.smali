.class Lcom/spacecaker/ButtonBurst$1;
.super Ljava/lang/Object;
.source "ButtonBurst.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spacecaker/ButtonBurst;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spacecaker/ButtonBurst;


# direct methods
.method constructor <init>(Lcom/spacecaker/ButtonBurst;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spacecaker/ButtonBurst$1;->this$0:Lcom/spacecaker/ButtonBurst;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/spacecaker/ButtonBurst$1;->this$0:Lcom/spacecaker/ButtonBurst;

    # getter for: Lcom/spacecaker/ButtonBurst;->mUpdating:Z
    invoke-static {v0}, Lcom/spacecaker/ButtonBurst;->access$0(Lcom/spacecaker/ButtonBurst;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/spacecaker/ButtonBurst$1;->this$0:Lcom/spacecaker/ButtonBurst;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spacecaker/ButtonBurst;->sendBroadCast(Z)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/spacecaker/ButtonBurst$1;->this$0:Lcom/spacecaker/ButtonBurst;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spacecaker/ButtonBurst;->sendBroadCast(Z)V

    goto :goto_0
.end method
