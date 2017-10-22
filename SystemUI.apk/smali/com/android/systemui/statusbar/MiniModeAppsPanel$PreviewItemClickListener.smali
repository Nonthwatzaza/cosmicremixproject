.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 2340
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    .prologue
    .line 2340
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2343
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2345
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 2346
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 2349
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2350
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeViewFromEditPanel(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V

    .line 2353
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2354
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2356
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v2, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 2357
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5202(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 2358
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2360
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2361
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2362
    return-void
.end method
