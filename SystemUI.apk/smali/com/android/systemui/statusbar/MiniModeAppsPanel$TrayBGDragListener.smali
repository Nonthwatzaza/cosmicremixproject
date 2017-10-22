.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayBGDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 2902
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    .prologue
    .line 2902
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const v7, 0x7f0d0056

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2907
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 2910
    .local v0, "action":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v6, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2987
    :cond_0
    :goto_0
    return v4

    .line 2917
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2920
    const/4 v2, 0x0

    .line 2921
    .local v2, "draggingView":Landroid/view/View;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2922
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2923
    .local v1, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 2928
    .end local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_1
    if-eqz v2, :cond_0

    .line 2931
    move-object v3, v2

    .line 2933
    .local v3, "sourceView":Landroid/view/View;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2934
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v6, :cond_0

    .line 2944
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2946
    .restart local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2949
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 2950
    goto :goto_0

    .line 2925
    .end local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v3    # "sourceView":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 2940
    .restart local v3    # "sourceView":Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-nez v6, :cond_2

    goto :goto_0

    .restart local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :pswitch_1
    move v4, v5

    .line 2959
    goto :goto_0

    .line 2963
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2967
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2968
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 2969
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 2972
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2973
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v7

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeViewFromEditPanel(Landroid/view/View;)V
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V

    .line 2976
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2978
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2979
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    move v4, v5

    .line 2981
    goto/16 :goto_0

    .line 2946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
