.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->onFinishInflate()V
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
    .line 1082
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1084
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1096
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1093
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->playTrayCloseSound()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    goto :goto_0

    .line 1084
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
