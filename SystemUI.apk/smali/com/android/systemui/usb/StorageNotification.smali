.class public Lcom/android/systemui/usb/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_STATE_UNMOUNTABLE:I = 0x2

.field private static final POP_UMS_ACTIVITY_ON_CONNECT:Z = true

.field private static final TAG:Ljava/lang/String; = "StorageNotification"

.field private static final UPDATE_DELAY:I = 0x7d0

.field private static final USBHOST_UPDATE_STATE:I = 0x1


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mNotificationEventHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 86
    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 87
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 88
    .local v0, "connected":Z
    const-string v3, "StorageNotification"

    const-string v4, "Startup with UMS connection %s (media state %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 93
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "thr":Landroid/os/HandlerThread;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification2"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "thr2":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 97
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 98
    new-instance v3, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;-><init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Landroid/app/PendingIntent;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getMediaStorageNotificationDismissable()Z
    .locals 2

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 501
    const/4 v0, 0x1

    .line 503
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideNotification(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 691
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 694
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 695
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationManager is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_0
    return-void

    .line 699
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 700
    .local v1, "notification":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 701
    const/4 v3, 0x0

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 702
    iget v3, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 705
    :try_start_0
    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 709
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 678
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 679
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    const/4 v2, 0x1

    .line 685
    :goto_1
    return v2

    .line 678
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isStorageRemovable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v3

    .line 654
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 655
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    const/4 v2, 0x1

    .line 662
    :cond_0
    return v2

    .line 654
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isUsbHostDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 666
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 667
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 668
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    const/4 v2, 0x1

    .line 673
    :goto_1
    return v2

    .line 667
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v2, "StorageNotification"

    const-string v3, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isUsbHostDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-direct/range {p0 .. p3}, Lcom/android/systemui/usb/StorageNotification;->onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v2, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v18, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/usb/UsbStorageActivity;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 172
    .local v8, "pi":Landroid/app/PendingIntent;
    const v3, 0x10405c7

    const v4, 0x10405c8

    const v5, 0x1080731

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 176
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 184
    .local v20, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChangedAsync :: failed to send message for 2GB SD card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 189
    .end local v20    # "msg1":Landroid/os/Message;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    const v10, 0x10405fa

    const v11, 0x10405fb

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 200
    :goto_1
    const v21, 0x10800ab

    .line 201
    .local v21, "notificationId":I
    const v2, 0x10800ab

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    goto/16 :goto_0

    .line 195
    .end local v21    # "notificationId":I
    :cond_4
    const v10, 0x10405f9

    const v11, 0x10405fb

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_5
    const-string v2, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 208
    const-string v2, "checking"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 209
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 210
    const v10, 0x10405fa

    const v11, 0x10405fb

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 223
    :cond_6
    :goto_2
    const v21, 0x10800ab

    .line 224
    .restart local v21    # "notificationId":I
    const v2, 0x10800ab

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    .line 225
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 216
    .end local v21    # "notificationId":I
    :cond_7
    const v10, 0x10405f9

    const v11, 0x10405fb

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_8
    const-string v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    .line 234
    const-string v2, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 239
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 246
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isStorageRemovable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "removed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 249
    .local v19, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_a

    .line 250
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChangedAsync :: failed to send message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v19    # "msg":Landroid/os/Message;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 269
    :cond_b
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_3

    .line 278
    :cond_c
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_d
    const-string v2, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    :cond_e
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 291
    .restart local v18    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 292
    const-string v2, "storage_volume"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 294
    .restart local v8    # "pi":Landroid/app/PendingIntent;
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 295
    const v3, 0x10405fd

    const v4, 0x10405ff

    const v5, 0x108007b

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 305
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 300
    :cond_f
    const v3, 0x10405fc

    const v4, 0x10405fe

    const v5, 0x108007b

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_4

    .line 306
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v2, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 315
    .restart local v19    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_12

    .line 316
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChangedAsync :: failed to send message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 337
    .end local v19    # "msg":Landroid/os/Message;
    :cond_13
    const-string v2, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 349
    const v10, 0x104060d

    const v11, 0x104060f

    const v12, 0x108007b

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 361
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 355
    :cond_16
    const v10, 0x104060c

    const v11, 0x104060e

    const v12, 0x108007b

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_5

    .line 362
    :cond_17
    const-string v2, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    const-string v2, "sys.fakeShutdown.state"

    const-string v3, "power_on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 370
    .local v17, "fakeState":Ljava/lang/String;
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fake state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v2, "power_on"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 372
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 373
    const v10, 0x1040605

    const v11, 0x1040607

    const v12, 0x108008a

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 387
    :cond_18
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 379
    :cond_19
    const v10, 0x1040604

    const v11, 0x1040606

    const v12, 0x108008a

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_6

    .line 389
    .end local v17    # "fakeState":Ljava/lang/String;
    :cond_1a
    const-string v2, "StorageNotification"

    const-string v3, "Ignoring unknown state {%s}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v1, "StorageNotification"

    const-string v2, "onUsbHostStateChangedAsync :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v1, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 583
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/UsbStorageUnmountActivity;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 586
    .local v7, "pi":Landroid/app/PendingIntent;
    const v2, 0x10406e5

    const v3, 0x10406e7

    const v4, 0x1080731

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 650
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string v1, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_3
    const-string v1, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    const-string v1, "sys.fakeShutdown.state"

    const-string v2, "power_on"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 609
    .local v16, "fakeState":Ljava/lang/String;
    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fake state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v1, "power_on"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    const v9, 0x10406e8

    const v10, 0x10406e9

    const v11, 0x108008a

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    .end local v16    # "fakeState":Ljava/lang/String;
    :cond_4
    const-string v1, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 619
    const-string v1, "removed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 621
    .local v18, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 622
    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUsbHostStateChangedAsync :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v18    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 627
    :cond_6
    const-string v1, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    :cond_7
    const v9, 0x10405fc

    const v10, 0x10405fe

    const v11, 0x108007b

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 638
    :cond_8
    const-string v1, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    :cond_9
    const v9, 0x1040600

    const v10, 0x1040602

    const v11, 0x108007b

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 122
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "st":Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v0, :cond_2

    .line 127
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    const-string v1, "StorageNotification"

    const-string v2, "No card or card being checked = don\'t display"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 p1, 0x0

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 140
    return-void

    .line 136
    :cond_2
    const-string v1, "StorageNotification"

    const-string v2, "ExternalStorageState is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 10
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;
    .param p7, "path"    # Ljava/lang/String;

    .prologue
    .line 512
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 572
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 516
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 519
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v4, :cond_0

    .line 523
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v7, :cond_2

    if-eqz p4, :cond_2

    .line 530
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 531
    .local v3, "notificationId":I
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 534
    .end local v3    # "notificationId":I
    :cond_2
    if-eqz p4, :cond_5

    .line 535
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 536
    .local v5, "r":Landroid/content/res/Resources;
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 537
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 539
    .local v2, "message":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    .line 540
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 541
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 544
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 546
    if-eqz p5, :cond_6

    .line 547
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 552
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 553
    if-nez p6, :cond_4

    .line 554
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 555
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 559
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v7, Landroid/app/Notification;->icon:I

    .line 560
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v7, v8, v6, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 564
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 565
    .restart local v3    # "notificationId":I
    if-eqz p4, :cond_7

    .line 566
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMediaStorageNotification : notify id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 512
    .end local v3    # "notificationId":I
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 549
    .restart local v2    # "message":Ljava/lang/CharSequence;
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v5    # "r":Landroid/content/res/Resources;
    .restart local v6    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 569
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "notificationId":I
    :cond_7
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMediaStorageNotification : cancel id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "sound"    # Z
    .param p5, "visible"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 420
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 495
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 425
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 428
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 432
    if-eqz p5, :cond_4

    .line 433
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 434
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 435
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 437
    .local v3, "message":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v8, :cond_2

    .line 438
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 439
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput p3, v8, Landroid/app/Notification;->icon:I

    .line 440
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 443
    :cond_2
    if-eqz p4, :cond_5

    .line 444
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 449
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 451
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 452
    if-nez p6, :cond_3

    .line 453
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 457
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v7, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 458
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adb_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v1, 0x1

    .line 463
    .local v1, "adbOn":Z
    :goto_2
    if-nez v1, :cond_7

    .line 473
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 477
    :goto_3
    const-string v8, "0"

    const-string v9, "persist.ums.popup"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 479
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 483
    .end local v1    # "adbOn":Z
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I

    .line 484
    .local v4, "notificationId":I
    if-eqz p5, :cond_8

    .line 485
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setUsbStorageNotification : notify id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    invoke-virtual {v5, v4, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 420
    .end local v4    # "notificationId":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 446
    .restart local v3    # "message":Ljava/lang/CharSequence;
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "r":Landroid/content/res/Resources;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    goto/16 :goto_1

    .line 458
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 475
    .restart local v1    # "adbOn":Z
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    goto :goto_3

    .line 488
    .end local v1    # "adbOn":Z
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    .restart local v4    # "notificationId":I
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    if-nez v8, :cond_9

    .line 489
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setUsbStorageNotification : cancel id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 492
    :cond_9
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UMS is still connected, keep notification ID, though sth may removed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 15
    .param p1, "available"    # Z

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v14, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 401
    const/high16 v0, 0x10000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 404
    .local v6, "pi":Landroid/app/PendingIntent;
    const v1, 0x10405c5

    const v2, 0x10405c6

    const v3, 0x1080731

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 412
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
