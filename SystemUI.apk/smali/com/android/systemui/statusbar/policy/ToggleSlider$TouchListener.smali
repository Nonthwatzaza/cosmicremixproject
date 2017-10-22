.class Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field mFocusInside:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 1

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    .line 395
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 400
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->isTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$502(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    .line 426
    :goto_1
    return v2

    .line 402
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 403
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->isTogglePressed:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$502(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    goto :goto_1

    .line 407
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_1

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 411
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    goto :goto_1

    .line 415
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 417
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->isTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$502(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 416
    goto :goto_2

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
