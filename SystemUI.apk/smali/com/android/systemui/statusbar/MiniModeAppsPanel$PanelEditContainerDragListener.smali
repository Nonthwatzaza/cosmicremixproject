.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;
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
    name = "PanelEditContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    .prologue
    .line 2992
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const v12, 0x7f0d0056

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2997
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 3000
    .local v0, "action":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v9, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v10

    .line 3093
    :goto_0
    return v9

    .line 3007
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    move v9, v10

    .line 3008
    goto :goto_0

    .line 3010
    :cond_1
    const/4 v3, 0x0

    .line 3011
    .local v3, "draggingView":Landroid/view/View;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3012
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 3013
    .local v1, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v3

    .line 3018
    .end local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_1
    if-nez v3, :cond_3

    move v9, v10

    .line 3019
    goto :goto_0

    .line 3015
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 3021
    :cond_3
    move-object v7, v3

    .line 3023
    .local v7, "sourceView":Landroid/view/View;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3024
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-nez v9, :cond_7

    :cond_4
    move v9, v10

    .line 3026
    goto :goto_0

    .line 3030
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-nez v9, :cond_7

    :cond_6
    move v9, v10

    .line 3033
    goto :goto_0

    .line 3035
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 3037
    .restart local v1    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    move v9, v10

    .line 3093
    goto :goto_0

    .line 3039
    :pswitch_0
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v12, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v12

    if-ne v9, v12, :cond_8

    move v9, v11

    .line 3044
    goto :goto_0

    :cond_8
    move v9, v10

    .line 3046
    goto :goto_0

    :pswitch_1
    move v9, v11

    .line 3052
    goto :goto_0

    .line 3055
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3057
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3060
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v9, :cond_9

    .line 3061
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v9

    const v12, 0x7f0d0068

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 3062
    .local v5, "previewIcon":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 3063
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v9}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3064
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3067
    .end local v5    # "previewIcon":Landroid/widget/ImageView;
    :cond_9
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 3071
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3072
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v10

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->addViewToEditPanel(Landroid/view/View;)V
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V

    .line 3083
    :cond_a
    :goto_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 3085
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3086
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    move v9, v11

    .line 3088
    goto/16 :goto_0

    .line 3075
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 3076
    .local v4, "i":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 3077
    .local v6, "previewWidth":I
    mul-int v8, v4, v6

    .line 3078
    .local v8, "xOffsetAtLeft":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v2, v9, 0x2

    .line 3079
    .local v2, "centerX":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/HorizontalScrollView;

    if-eqz v9, :cond_a

    .line 3080
    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v9

    check-cast v9, Landroid/widget/HorizontalScrollView;

    sub-int v12, v8, v2

    invoke-virtual {v9, v12, v10}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_2

    .end local v2    # "centerX":I
    .end local v4    # "i":I
    .end local v6    # "previewWidth":I
    .end local v8    # "xOffsetAtLeft":I
    :cond_c
    move v9, v10

    .line 3090
    goto/16 :goto_0

    .line 3037
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
