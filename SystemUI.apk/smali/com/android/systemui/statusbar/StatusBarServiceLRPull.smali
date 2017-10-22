.class public Lcom/android/systemui/statusbar/StatusBarServiceLRPull;
.super Landroid/widget/LinearLayout;
.source "StatusBarServiceLRPull.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private LAYOUT:Z

.field private UPDATE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeset"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->LAYOUT:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->mUpdating:Z

    .line 31
    const-string v0, "com.androidminang.UPDATE"

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->UPDATE:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 39
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 44
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 40
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 41
    .local v0, "w":I
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->sendBroadCast(Z)V

    .line 47
    :goto_0
    return v3

    .line 46
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->sendBroadCast(Z)V

    goto :goto_0
.end method

.method sendBroadCast(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.androidminang.UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "LEOT_YANG_MANA_NIH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarServiceLRPull;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
