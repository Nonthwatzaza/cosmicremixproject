.class Lcom/android/systemui/multiwindow/CenterBarWindow$4;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 541
    const-string v0, "FlashBarService"

    const-string v1, "centerBarWindow onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v4

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$000(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-ne v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 552
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 554
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$602(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 555
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0, v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 556
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0, v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 567
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1802(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 570
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$2000(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 574
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 578
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 579
    :cond_4
    const-string v0, "FlashBarService"

    const-string v1, "centerBarWindow onTouch : MotionEvent is ACTION_UP|ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->centerControlBarDocking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 582
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1000(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    # invokes: Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/res/Configuration;)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$2000(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    goto/16 :goto_0

    .line 559
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 561
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$602(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 562
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0, v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 563
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$4;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0, v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    goto/16 :goto_1
.end method
