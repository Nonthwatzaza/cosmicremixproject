.class Lcom/panel/Panel$1;
.super Landroid/content/BroadcastReceiver;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/panel/Panel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/panel/Panel;


# direct methods
.method constructor <init>(Lcom/panel/Panel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/panel/Panel$1;->this$0:Lcom/panel/Panel;

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/panel/Panel$1;->this$0:Lcom/panel/Panel;

    iget-object v0, v0, Lcom/panel/Panel;->VF:Landroid/widget/ViewFlipper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 24
    iget-object v0, p0, Lcom/panel/Panel$1;->this$0:Lcom/panel/Panel;

    iget-object v0, v0, Lcom/panel/Panel;->VF:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/panel/Panel$1;->this$0:Lcom/panel/Panel;

    # invokes: Lcom/panel/Panel;->inFromRightAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/panel/Panel;->access$0(Lcom/panel/Panel;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 25
    iget-object v0, p0, Lcom/panel/Panel$1;->this$0:Lcom/panel/Panel;

    iget-object v0, v0, Lcom/panel/Panel;->VF:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/panel/Panel$1;->this$0:Lcom/panel/Panel;

    # invokes: Lcom/panel/Panel;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/panel/Panel;->access$1(Lcom/panel/Panel;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 26
    return-void
.end method
