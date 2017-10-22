.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationTriggerTouchListener"
.end annotation


# instance fields
.field private mHiliteOnR:Ljava/lang/Runnable;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mTouchSlop:I

.field mVT:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 1

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2214
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mHiliteOnR:Ljava/lang/Runnable;

    .line 2211
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mTouchSlop:I

    .line 2212
    return-void
.end method


# virtual methods
.method public hilite(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 2219
    if-eqz p1, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mHiliteOnR:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2225
    :goto_0
    return-void

    .line 2222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mHiliteOnR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2223
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x41000000    # 8.0f

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2234
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 2367
    :cond_0
    :goto_0
    return v2

    .line 2239
    :cond_1
    const/4 v1, 0x0

    .line 2254
    .local v1, "sumSize":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2255
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_2
    move v2, v3

    .line 2367
    goto :goto_0

    .line 2258
    :pswitch_0
    cmpl-float v4, v1, v7

    if-lez v4, :cond_3

    .line 2259
    const-string v3, "TabletStatusBar"

    const-string v4, "D.PALM.N"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4002(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    goto :goto_0

    .line 2264
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4002(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2268
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2269
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->pokeWakelock()V

    .line 2273
    :cond_4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    .line 2274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchX:F

    .line 2275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchY:F

    .line 2276
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->hilite(Z)V

    .line 2279
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_5

    .line 2280
    const/16 v4, 0x12

    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 2288
    :cond_5
    :pswitch_1
    cmpl-float v4, v1, v7

    if-lez v4, :cond_6

    .line 2289
    const-string v4, "TabletStatusBar"

    const-string v5, "OM.PALM.N"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4002(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2293
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2294
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2295
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 2296
    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2303
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2304
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->pokeWakelock()V

    .line 2309
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_0

    .line 2310
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2311
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2313
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2314
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateExpand()V

    .line 2315
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 2316
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->hilite(Z)V

    .line 2317
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 2318
    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2324
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->hilite(Z)V

    .line 2327
    cmpl-float v4, v1, v7

    if-lez v4, :cond_9

    .line 2328
    const-string v4, "TabletStatusBar"

    const-string v5, "UC.PALM.N"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4002(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2332
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2333
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2334
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 2335
    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2341
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    .line 2342
    if-ne v0, v2, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mTouchSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mTouchSlop:I

    :goto_1
    int-to-float v4, v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 2351
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateExpand()V

    .line 2352
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$4200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 2353
    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2356
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-nez v4, :cond_b

    .line 2357
    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 2362
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 2363
    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2342
    :cond_c
    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mTouchSlop:I

    div-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 2255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
