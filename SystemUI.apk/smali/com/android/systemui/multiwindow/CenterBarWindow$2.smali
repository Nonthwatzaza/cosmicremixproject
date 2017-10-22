.class Lcom/android/systemui/multiwindow/CenterBarWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "CenterBarWindow.java"


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
    .line 264
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$000(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v12

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-ne v12, v13, :cond_2

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "action":Ljava/lang/String;
    const-string v12, "FlashBarService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCenterBarEventReceiver : onReceive : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_NOTIFY_FOCUS_WINDOWS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    sget-object v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_ARRANGE_TYPE:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$102(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/app/ActivityManager;

    move-result-object v12

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 277
    .local v10, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 278
    .local v4, "finishedCaller":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 280
    .local v5, "found":Z
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 281
    .local v11, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    iget v13, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 282
    iget v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v12, :cond_0

    .line 285
    const/4 v5, 0x1

    .line 288
    :cond_0
    iget v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    .end local v11    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 293
    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v13, 0x0

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$202(Lcom/android/systemui/multiwindow/CenterBarWindow;Z)Z

    .line 351
    .end local v1    # "action":Ljava/lang/String;
    .end local v4    # "finishedCaller":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "found":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    :goto_1
    return-void

    .line 297
    .restart local v1    # "action":Ljava/lang/String;
    :cond_3
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_ARRANGE_CONTROL_BAR:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 299
    const/4 v3, 0x0

    .line 300
    .local v3, "centerBarPos":I
    const/4 v9, 0x0

    .line 301
    .local v9, "newCenterBarPos":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v3

    .line 303
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_CONTROL_BAR_POS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 309
    :goto_2
    if-eq v9, v3, :cond_5

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v13, v9}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$602(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    move-result v13

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->centerControlBarDocking()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B
    invoke-static {v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v14}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 314
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1000(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    # invokes: Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/res/Configuration;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13, v14}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 320
    :cond_5
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_CONTROL_BAR_EXCHANGE:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 321
    .local v7, "isExchangeRequested":Z
    if-eqz v7, :cond_2

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B
    invoke-static {v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v14}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/app/ActivityManager;

    move-result-object v12

    const/4 v13, 0x0

    sget v14, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/android/systemui/multiwindow/MultiWindowReflector$ActivityManager;->resizeArrangedWindow(Landroid/app/ActivityManager;IILandroid/graphics/Rect;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v12

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-ne v12, v13, :cond_7

    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$102(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 330
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    goto/16 :goto_1

    .line 305
    .end local v7    # "isExchangeRequested":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v3

    .line 306
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_CONTROL_BAR_POS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_2

    .line 327
    .restart local v7    # "isExchangeRequested":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$102(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    goto :goto_3

    .line 332
    .end local v3    # "centerBarPos":I
    .end local v7    # "isExchangeRequested":Z
    .end local v9    # "newCenterBarPos":I
    :cond_8
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_CONTROL_BAR_FIX:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 334
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_CONTROL_BAR_FIX_ENABLE:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 335
    .local v8, "isFixRequested":Z
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_CONTROL_BAR_FIX_CALLER:Ljava/lang/String;

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 336
    .local v2, "callerTask":I
    const/4 v12, -0x1

    if-ne v2, v12, :cond_9

    .line 337
    const-string v12, "FlashBarService"

    const-string v13, "mCenterBarEventReceiver: fix controll bar caller is not valid."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_9
    if-eqz v8, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v13, 0x1

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$202(Lcom/android/systemui/multiwindow/CenterBarWindow;Z)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 344
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v13, 0x0

    # setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z
    invoke-static {v12, v13}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$202(Lcom/android/systemui/multiwindow/CenterBarWindow;Z)Z

    goto/16 :goto_1
.end method
