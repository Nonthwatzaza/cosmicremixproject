.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastY:I

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V
    .locals 1

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->lastY:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 624
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 626
    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->lastY:I

    .line 641
    :goto_0
    return-void

    .line 628
    :cond_0
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->lastY:I

    if-ne v1, v3, :cond_1

    .line 629
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->lastY:I

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 632
    .local v0, "currY":I
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->lastY:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->doScroll(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 633
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 634
    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->lastY:I

    goto :goto_0

    .line 637
    :cond_2
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->lastY:I

    .line 638
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 639
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mover:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
