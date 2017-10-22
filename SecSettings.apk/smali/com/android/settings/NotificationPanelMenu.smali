.class public Lcom/android/settings/NotificationPanelMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationPanelMenu.java"


# instance fields
.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

.field private mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

.field private mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

.field private mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

.field private mBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

.field private mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayout1:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayout2:Landroid/widget/LinearLayout;

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationPanelMenu$1;-><init>(Lcom/android/settings/NotificationPanelMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    .line 93
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$2;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 103
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$3;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 154
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$4;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationPanelMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 15
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    .line 403
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 404
    .local v7, "longClickedPanelTag":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "longClickedPanelInfo":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v5, v6, v11

    .line 406
    .local v5, "longClickedPanelCategory":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 409
    .local v4, "longClickedIdx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 410
    .local v3, "dropPanelTag":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "dropPanelInfo":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v1, v2, v11

    .line 412
    .local v1, "dropPanelCategory":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 414
    .local v0, "dropIdx":I
    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changeQuickSettingsByBar() - longClickedPanelTag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / dropTag : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v11, "active"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "candidate"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 418
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x5

    if-gt v11, v12, :cond_0

    .line 419
    const v11, 0x7f090e60

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 452
    .end local v8    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 424
    .local v10, "removedItem":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 451
    .end local v10    # "removedItem":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_0

    .line 427
    :cond_2
    const-string v11, "candidate"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "active"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 428
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 429
    .restart local v10    # "removedItem":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 430
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_1

    .line 431
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 432
    .local v9, "oustedItem":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 435
    .end local v9    # "oustedItem":Ljava/lang/String;
    .end local v10    # "removedItem":Ljava/lang/String;
    :cond_3
    const-string v11, "active"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "active"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 436
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 437
    .restart local v10    # "removedItem":Ljava/lang/String;
    if-ge v4, v0, :cond_4

    .line 438
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 440
    :cond_4
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 443
    .end local v10    # "removedItem":Ljava/lang/String;
    :cond_5
    const-string v11, "candidate"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "candidate"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 444
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 445
    .restart local v10    # "removedItem":Ljava/lang/String;
    if-ge v4, v0, :cond_6

    .line 446
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 448
    :cond_6
    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 14
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    .line 456
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 457
    .local v7, "longClickedPanelTag":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "longClickedPanelInfo":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v5, v6, v10

    .line 459
    .local v5, "longClickedPanelCategory":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 462
    .local v4, "longClickedIdx":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 463
    .local v3, "dropPanelTag":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "dropPanelInfo":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v1, v2, v10

    .line 465
    .local v1, "dropPanelCategory":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, "dropIdx":I
    const-string v10, "NotificationPanelMenu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeQuickSettingsByPanel() - longClickedPanelTag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / dropTag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v10, "active"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "candidate"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 471
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v0}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 472
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x5

    if-gt v10, v11, :cond_0

    .line 473
    const v10, 0x7f090e60

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 474
    .local v8, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 509
    .end local v8    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 478
    .local v9, "removedItem":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v9    # "removedItem":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_1

    .line 484
    :cond_3
    const-string v10, "candidate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "active"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 485
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v0}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 486
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 487
    .restart local v9    # "removedItem":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    .end local v9    # "removedItem":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_1

    .line 492
    :cond_5
    const-string v10, "active"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "active"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 493
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v0}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 494
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 495
    .restart local v9    # "removedItem":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    .end local v9    # "removedItem":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_1

    .line 500
    :cond_7
    const-string v10, "candidate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "candidate"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 501
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v0}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 502
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 503
    .restart local v9    # "removedItem":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 505
    .end local v9    # "removedItem":Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v11, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto/16 :goto_1
.end method

.method private displayQuickSettings(IILjava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 14
    .param p1, "totalPanelNum"    # I
    .param p2, "oneLinePanelNum"    # I
    .param p4, "panelLayout1"    # Landroid/widget/LinearLayout;
    .param p5, "panelBarLayout1"    # Landroid/widget/LinearLayout;
    .param p6, "panelLayout2"    # Landroid/widget/LinearLayout;
    .param p7, "panelBarLayout2"    # Landroid/widget/LinearLayout;
    .param p9, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p3, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 278
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 281
    .local v2, "idx":I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 282
    const v12, 0x7f0400dc

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 283
    .local v11, "panelView":Landroid/view/View;
    const v12, 0x7f0b0264

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 284
    .local v6, "panel":Landroid/widget/LinearLayout;
    const v12, 0x7f0b0265

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 285
    .local v8, "panelImageView":Landroid/widget/ImageView;
    const v12, 0x7f0b0266

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 287
    .local v10, "panelTextView":Landroid/widget/TextView;
    const v12, 0x7f0400dd

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 288
    .local v4, "overlayedPanelView":Landroid/view/View;
    const v12, 0x7f0b0268

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 289
    .local v7, "panelBar":Landroid/widget/ImageView;
    const v12, 0x7f0b0269

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "fakePanel":Landroid/view/View;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 293
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 294
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 297
    const v12, 0x7f0202b5

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 306
    :goto_1
    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 308
    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    .line 309
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    :goto_2
    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 299
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 300
    .local v9, "panelText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "drawable"

    invoke-virtual {v12, v9, v13, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "string"

    invoke-virtual {v12, v9, v13, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    iget-object v12, p0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_1

    .line 312
    .end local v9    # "panelText":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 317
    .end local v1    # "fakePanel":Landroid/view/View;
    .end local v4    # "overlayedPanelView":Landroid/view/View;
    .end local v6    # "panel":Landroid/widget/LinearLayout;
    .end local v7    # "panelBar":Landroid/widget/ImageView;
    .end local v8    # "panelImageView":Landroid/widget/ImageView;
    .end local v10    # "panelTextView":Landroid/widget/TextView;
    .end local v11    # "panelView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 513
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 516
    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 9

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "active_app_list":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "cadidate_app_list":Ljava/lang/String;
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - active_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - cadidate_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-nez v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "activeApps":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 383
    .local v4, "convertPanelString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 384
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 389
    .end local v4    # "convertPanelString":Ljava/lang/String;
    :cond_2
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "cadidateApps":[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_4

    .line 391
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .restart local v4    # "convertPanelString":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 393
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 397
    .end local v4    # "convertPanelString":Ljava/lang/String;
    :cond_4
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - mActiveNotificationList.size():  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppslist() - mCandidateNotificationList.size(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Apn"

    const-string v2, "notification_panel_apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "NfcP2p"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirplaneMode"

    const-string v2, "notification_airplane_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Ebook"

    const-string v2, "notification_panel_e_reading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PenOnly"

    const-string v2, "notification_panel_pen_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_apn"

    const-string v2, "Apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "NfcP2p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :goto_1
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_airplane_mode"

    const-string v2, "AirplaneMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_e_reading"

    const-string v2, "Ebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_pen_mode"

    const-string v2, "PenOnly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private refreshUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 553
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v1

    .line 555
    .local v1, "isRemoved":Z
    const-string v3, "NotificationPanelMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshUI() - isRemoved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v1    # "isRemoved":Z
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 559
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400de

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 560
    .local v2, "quickSettingsView":Landroid/view/View;
    const v3, 0x7f0b026c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout1:Landroid/widget/LinearLayout;

    .line 561
    const v3, 0x7f0b026d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

    .line 562
    const v3, 0x7f0b026e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout2:Landroid/widget/LinearLayout;

    .line 563
    const v3, 0x7f0b026f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

    .line 564
    const v3, 0x7f0b0270

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

    .line 565
    const v3, 0x7f0b0271

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

    .line 566
    const v3, 0x7f0b0272

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

    .line 567
    const v3, 0x7f0b0273

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

    .line 569
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 572
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 573
    return-void
.end method

.method private saveAppslist()V
    .locals 9

    .prologue
    .line 526
    const-string v0, ""

    .line 527
    .local v0, "activeApps":Ljava/lang/String;
    const-string v2, ""

    .line 532
    .local v2, "candidateApps":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 533
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 534
    .local v4, "convertPanelString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "activeContent":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v4    # "convertPanelString":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 539
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 540
    .restart local v4    # "convertPanelString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "candidateContent":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 544
    .end local v3    # "candidateContent":Ljava/lang/String;
    .end local v4    # "convertPanelString":Ljava/lang/String;
    :cond_1
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAppslist() -  activeApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAppslist() - candidateApps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_app_list"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 549
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .param p2, "longClickedIdx"    # I
    .param p4, "dropIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "longClickedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "dropList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    .local v0, "temp":Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 10

    .prologue
    const/16 v1, 0xa

    .line 247
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 250
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 252
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 256
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 261
    const/4 v2, 0x5

    .line 265
    .local v2, "oneLinePanelNum":I
    :goto_0
    const-string v0, "NotificationPanelMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout1:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayout2:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelBarLayout2:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    const-string v9, "active"

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IILjava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout1:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsLayout2:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableButtonsBarLayout2:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    const-string v9, "candidate"

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IILjava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 273
    return-void

    .line 263
    .end local v2    # "oneLinePanelNum":I
    :cond_0
    const/16 v2, 0xa

    .restart local v2    # "oneLinePanelNum":I
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 205
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 240
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 241
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 243
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->addPreferencesFromResource(I)V

    .line 196
    const-string v0, "brightness_adjustment"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->makeConvertPanelName()V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 229
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    .end local v0    # "value":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 229
    .restart local v0    # "value":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 215
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    return-void

    :cond_0
    move v0, v1

    .line 215
    goto :goto_0
.end method
