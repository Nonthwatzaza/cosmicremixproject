.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0

    .prologue
    .line 2084
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2088
    const/4 v0, 0x0

    .line 2103
    .local v0, "sumSize":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    .line 2150
    :goto_1
    return v1

    .line 2106
    :pswitch_0
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 2107
    const-string v2, "TabletStatusBar"

    const-string v3, "D.PALM.T"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3902(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    goto :goto_1

    .line 2112
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3902(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2116
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->supportHapticFeedback:Z

    if-eqz v1, :cond_0

    .line 2118
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 2124
    :pswitch_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    .line 2125
    const-string v3, "TabletStatusBar"

    const-string v4, "OM.PALM.T"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3902(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2129
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2130
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 2138
    :pswitch_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 2139
    const-string v3, "TabletStatusBar"

    const-string v4, "UC.PALM.T"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3902(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2143
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$3900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2144
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 2103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
