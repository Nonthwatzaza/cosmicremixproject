.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialPos:F

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollDistance(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->initialPos:F

    .line 211
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mFingerOnDisplay:Z

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    .line 189
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollVelocity(FF)F

    move-result v9

    .line 195
    .local v9, "scrollVelocity":F
    const v0, 0x453b8000    # 3000.0f

    cmpl-float v0, v9, v0

    if-lez v0, :cond_1

    .line 196
    const v9, 0x453b8000    # 3000.0f

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    float-to-int v4, v9

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1
    const v0, -0x3ac48000    # -3000.0f

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    .line 198
    const v9, -0x3ac48000    # -3000.0f

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-virtual {v2, p3, p4}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollDistance(FF)F

    move-result v0

    .line 171
    .local v0, "scrollDistance":F
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-boolean v2, v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollDistance(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->initialPos:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    # getter for: Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPagingTouchSlop:I
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->access$100(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 181
    :goto_0
    return v1

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iput-boolean v1, v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    .line 180
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    neg-float v3, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->doScroll(F)Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    # getter for: Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->access$000(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)Lcom/android/systemui/recent/RecentsCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/recent/RecentsCallback;->dismiss()V

    .line 161
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
