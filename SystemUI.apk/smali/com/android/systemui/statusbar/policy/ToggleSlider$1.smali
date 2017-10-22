.class Lcom/android/systemui/statusbar/policy/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v1, v0

    .line 130
    :goto_0
    return v1

    .line 120
    :pswitch_0
    const/16 v2, 0x42

    if-eq p2, v2, :cond_1

    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->keyUp:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
