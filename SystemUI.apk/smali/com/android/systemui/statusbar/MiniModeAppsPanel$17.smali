.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v5, 0x425

    const/4 v3, 0x1

    .line 2179
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2181
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 2185
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 2187
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 2188
    .local v0, "scrollX":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 2189
    .local v1, "scrollY":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 2192
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2193
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2194
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2197
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2175
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 2171
    return-void
.end method
