.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "SmartSwitcherRecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->loadTasksInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 444
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 26
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 486
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v17

    .line 488
    .local v17, "origPri":I
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 492
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 496
    .local v9, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 501
    .local v8, "homeInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->needMWList:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    const/16 v2, 0x14

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v22

    .line 503
    .local v22, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-virtual {v9, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v21

    .line 504
    .local v21, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 505
    .local v19, "r":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->isRunningMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 507
    .local v23, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_1

    .line 508
    if-eqz v8, :cond_2

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v19    # "r":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v21    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v22    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v23    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-virtual {v9, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v21

    .line 525
    .restart local v21    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v16

    .line 527
    .local v16, "numTasks":I
    const/4 v10, -0x1

    .line 529
    .local v10, "homeIdx":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v24, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    const/16 v2, 0x14

    if-ge v14, v2, :cond_5

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 583
    :cond_5
    const/4 v2, 0x1

    if-lt v10, v2, :cond_6

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->needMWList:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 585
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recent/TaskDescription;

    .line 586
    .local v25, "tmp":Lcom/android/systemui/recent/TaskDescription;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 592
    .end local v25    # "tmp":Lcom/android/systemui/recent/TaskDescription;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->needMWList:Ljava/lang/Boolean;

    .line 596
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 598
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 602
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 604
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v24, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 608
    :cond_8
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 610
    const/4 v2, 0x0

    return-object v2

    .line 543
    :cond_9
    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 547
    .local v20, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v8, :cond_a

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 557
    move v10, v11

    .line 561
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v15

    .line 567
    .local v15, "item":Lcom/android/systemui/recent/TaskDescription;
    if-eqz v15, :cond_b

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v2, v15}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V

    .line 571
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 535
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 589
    .end local v15    # "item":Lcom/android/systemui/recent/TaskDescription;
    .end local v20    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 444
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "values":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 464
    .local v0, "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 472
    .end local v0    # "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_0
    return-void
.end method
