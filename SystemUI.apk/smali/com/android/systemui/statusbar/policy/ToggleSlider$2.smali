.class Lcom/android/systemui/statusbar/policy/ToggleSlider$2;
.super Landroid/content/BroadcastReceiver;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;
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
    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # invokes: Lcom/android/systemui/statusbar/policy/ToggleSlider;->changedFont()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$200(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setEnabled(Z)V

    .line 375
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$400(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 376
    :cond_2
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setEnabled(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$400(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method
