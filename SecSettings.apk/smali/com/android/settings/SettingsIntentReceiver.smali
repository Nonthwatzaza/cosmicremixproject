.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 664
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {v3, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    .line 667
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 668
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 680
    :cond_1
    :goto_1
    return v1

    .line 676
    :cond_2
    aget-object v0, v4, v2

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 677
    goto :goto_1
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 643
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {v3, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    .line 646
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 647
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    :cond_0
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    move-object v0, v2

    .line 660
    :goto_1
    return-object v0

    .line 655
    :cond_1
    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v6, :cond_2

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_3

    :cond_2
    move-object v0, v2

    .line 657
    goto :goto_1

    .line 660
    :cond_3
    aget-object v0, v4, v1

    goto :goto_1
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 537
    const-string v0, "sys/class/sec/switch/adc"

    .line 538
    .local v0, "SmartDockName":Ljava/lang/String;
    new-array v1, v8, [C

    .line 539
    .local v1, "buffer":[C
    const/4 v3, 0x0

    .line 540
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 542
    .local v5, "fileString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 543
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 544
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 545
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 553
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 555
    const/4 v7, 0x1

    .line 557
    :cond_0
    return v7

    .line 547
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 550
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .line 547
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private isAutoActivateFMM(Z)Z
    .locals 4
    .param p1, "onoff"    # Z

    .prologue
    const/4 v1, 0x1

    .line 574
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    if-eqz p1, :cond_1

    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CMCC"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CU"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    :cond_0
    const/4 v1, 0x0

    .line 589
    :cond_1
    return v1
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 516
    iget-object v4, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 519
    const-string v3, ""

    .line 522
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 523
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 525
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 526
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 528
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 529
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 530
    const/4 v4, 0x1

    .line 533
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeDMfile()V
    .locals 5

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 596
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/system/samsungaccount.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SettingsIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DM file name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SettingsIntentReceiver"

    const-string v1, "writedatatonv - finally"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    if-eqz v2, :cond_3

    .line 607
    :try_start_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "SettingsIntentReceiver"

    const-string v1, "writedatatonv - call raf.close()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    :cond_3
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    const-string v1, "SettingsIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 599
    :catch_1
    move-exception v0

    .line 600
    :try_start_2
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - Exception in steam write"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    :cond_4
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - finally"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_5
    if-eqz v1, :cond_3

    .line 607
    :try_start_3
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - call raf.close()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 609
    :catch_2
    move-exception v0

    .line 610
    const-string v1, "SettingsIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 601
    :catch_3
    move-exception v0

    .line 602
    :try_start_4
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - IOException in steam write"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 604
    :cond_7
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - finally"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_8
    if-eqz v1, :cond_3

    .line 607
    :try_start_5
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - call raf.close()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 609
    :catch_4
    move-exception v0

    .line 610
    const-string v1, "SettingsIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "SettingsIntentReceiver"

    const-string v3, "writedatatonv - finally"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_a
    if-eqz v1, :cond_c

    .line 607
    :try_start_6
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "SettingsIntentReceiver"

    const-string v3, "writedatatonv - call raf.close()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 611
    :cond_c
    :goto_1
    throw v0

    .line 609
    :catch_5
    move-exception v1

    .line 610
    const-string v2, "SettingsIntentReceiver"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private sendTalkbackNotification(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 495
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 496
    .local v1, "nManager":Landroid/app/NotificationManager;
    const v3, 0xd20fe

    .line 498
    .local v3, "notificationID":I
    if-eqz p2, :cond_0

    .line 499
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 500
    .local v2, "notification":Landroid/app/Notification;
    const v5, 0x7f020314

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 501
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 502
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 505
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 507
    .local v4, "pi":Landroid/app/PendingIntent;
    const v5, 0x7f0906c7

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0906c8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 509
    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 513
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onoff"    # Z

    .prologue
    const/4 v3, 0x0

    .line 561
    const-string v2, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMM enabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsIntentReceiver;->isAutoActivateFMM(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    :cond_0
    const-string v2, "FMMPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 567
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 568
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_1
    move v2, v3

    .line 563
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 619
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/mobiletracker.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SettingsIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MT file name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - finally"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    if-eqz v1, :cond_3

    .line 633
    :try_start_2
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - call raf.close()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 640
    :cond_3
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    const-string v1, "SettingsIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 623
    :catch_1
    move-exception v1

    .line 624
    :goto_1
    :try_start_3
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - Exception in steam write"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 630
    :cond_4
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - finally"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_5
    if-eqz v0, :cond_3

    .line 633
    :try_start_4
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - call raf.close()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 635
    :catch_2
    move-exception v0

    .line 636
    const-string v1, "SettingsIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    :catch_3
    move-exception v1

    .line 626
    :goto_2
    :try_start_5
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 630
    :cond_7
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - finally"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_8
    if-eqz v0, :cond_3

    .line 633
    :try_start_6
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - call raf.close()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 635
    :catch_4
    move-exception v0

    .line 636
    const-string v1, "SettingsIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 627
    :catch_5
    move-exception v1

    .line 628
    :goto_3
    :try_start_7
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - IOException in steam write"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 630
    :cond_a
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - finally"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_b
    if-eqz v0, :cond_3

    .line 633
    :try_start_8
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "SettingsIntentReceiver"

    const-string v2, "writedatatonv - call raf.close()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 635
    :catch_6
    move-exception v0

    .line 636
    const-string v1, "SettingsIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 630
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_4
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "SettingsIntentReceiver"

    const-string v3, "writedatatonv - finally"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_d
    if-eqz v1, :cond_f

    .line 633
    :try_start_9
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "SettingsIntentReceiver"

    const-string v3, "writedatatonv - call raf.close()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 637
    :cond_f
    :goto_5
    throw v0

    .line 635
    :catch_7
    move-exception v1

    .line 636
    const-string v2, "SettingsIntentReceiver"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 630
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 627
    :catch_8
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 625
    :catch_9
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    .line 623
    :catch_a
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 82
    .local v29, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 83
    .local v19, "mPm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 85
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_0

    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onReceive(): "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    const-string v35, "com.samsung.wipe.MTDATA"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 88
    .local v12, "extras":Landroid/os/Bundle;
    const-string v35, "MTDATA"

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 89
    .local v34, "temp":Ljava/lang/String;
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_1

    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "MT data: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 94
    const-string v35, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    const-string v36, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    const/16 v35, 0x1

    :goto_0
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v34    # "temp":Ljava/lang/String;
    :cond_2
    const-string v35, "com.android.settings.action.talkback_off"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 487
    :cond_3
    :goto_1
    const-string v35, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 488
    const-string v35, "samsung_signin"

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 491
    :cond_4
    :goto_2
    return-void

    .line 95
    .restart local v12    # "extras":Landroid/os/Bundle;
    .restart local v34    # "temp":Ljava/lang/String;
    :cond_5
    const/16 v35, 0x0

    goto :goto_0

    .line 103
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v34    # "temp":Ljava/lang/String;
    :cond_6
    const-string v35, "android.intent.action.ASSISTIVELIGHT_ON"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 104
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_1

    .line 105
    :cond_7
    const-string v35, "android.intent.action.ASSISTIVELIGHT_OFF"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 106
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 107
    const-string v35, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 108
    .local v27, "notificationManager":Landroid/app/NotificationManager;
    const v35, 0x7f020311

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 109
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :cond_8
    const-string v35, "android.intent.action.NEGATIVECOLOR_ON"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 110
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_1

    .line 111
    :cond_9
    const-string v35, "android.intent.action.NEGATIVECOLOR_OFF"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 112
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_1

    .line 115
    :cond_a
    const-string v35, "android.intent.action.BCS_REQUEST"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 116
    const-string v35, "command"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "command":Ljava/lang/String;
    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onReceive(), action: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", command: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 120
    :goto_3
    const-string v35, "AT+AIRPLANEVALUE"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    .line 121
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "ATT CMD is not AT+AIRPLANEVALUE"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 119
    :cond_b
    const-string v7, ""

    goto :goto_3

    .line 124
    :cond_c
    new-instance v30, Landroid/content/Intent;

    const-string v35, "android.intent.action.BCS_RESPONSE"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v30, "responseIntent":Landroid/content/Intent;
    const-string v13, ""

    .line 126
    .local v13, "isAirplane":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "airplane_mode_on"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 127
    const-string v13, "ON"

    .line 131
    :goto_4
    const-string v35, "response"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "response is "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 129
    :cond_d
    const-string v13, "OFF"

    goto :goto_4

    .line 135
    .end local v7    # "command":Ljava/lang/String;
    .end local v13    # "isAirplane":Ljava/lang/String;
    .end local v30    # "responseIntent":Landroid/content/Intent;
    :cond_e
    const-string v35, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 137
    .restart local v12    # "extras":Landroid/os/Bundle;
    const/16 v31, 0x2

    .line 138
    .local v31, "ringerMode":I
    if-eqz v12, :cond_10

    .line 139
    const-string v35, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 140
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_f

    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Extras, ringer mode: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_f
    :goto_5
    packed-switch v31, :pswitch_data_0

    .line 164
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_3

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Not supported ringer mode"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 142
    :cond_10
    const-string v35, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 143
    .local v6, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v31

    .line 144
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_f

    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "No extras, ringer mode: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 149
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_11

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Ringer mode: silent & set driving mode off"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_11
    const-string v35, "driving_mode_on"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    const-string v35, "vibrate_in_silent"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 155
    :pswitch_1
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_12

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Ringer mode: vibrate"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_12
    const-string v35, "vibrate_in_silent"

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 160
    :pswitch_2
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_13

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Ringer mode: normal"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_13
    const-string v35, "vibrate_in_silent"

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 166
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v31    # "ringerMode":I
    :cond_14
    const-string v35, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_25

    .line 167
    const-string v35, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 169
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 170
    .local v17, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "mLockPatternUtils.isSecure(): "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v36, "is_secured_lock"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v35

    if-eqz v35, :cond_1f

    const/16 v35, 0x1

    :goto_6
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    .end local v17    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_15
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_16

    .line 175
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "SecHardwareInterface.setAmoledACL()"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v35, "power_saving_mode"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-eqz v35, :cond_20

    const/16 v35, 0x1

    :goto_7
    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 180
    :cond_16
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 185
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "smart_network"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-lez v35, :cond_21

    const/4 v15, 0x1

    .line 187
    .local v15, "isOn":Z
    :goto_8
    const-string v35, "statusbar"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/StatusBarManager;

    .line 203
    .local v21, "mStatusBar":Landroid/app/StatusBarManager;
    const-string v35, "high_contrast"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-eqz v35, :cond_22

    const/16 v35, 0x1

    :goto_9
    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 206
    const-string v35, "torch_light"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_18

    .line 208
    const-string v35, "torch_light"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    :cond_18
    const-string v35, "screen_mode_setting"

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 233
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 234
    .local v32, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v35, "pref_device_provision"

    const/16 v36, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    if-nez v35, :cond_1a

    .line 235
    const-string v35, "screen_off_timeout"

    const/16 v36, 0x7530

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const v36, 0x1d8a8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 236
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Overriding setup wizard set screen timeout"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v36, "screen_off_timeout"

    const-string v35, "USC"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_23

    const v35, 0xea60

    :goto_a
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    :cond_19
    const-string v35, "device_provisioned"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 241
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 242
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v35, "pref_device_provision"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 271
    const-string v35, "screen_off_timeout"

    const/16 v36, 0x7530

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-nez v35, :cond_1b

    .line 272
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Reset screen timeout to 30 seconds"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v35, "screen_off_timeout"

    const/16 v36, 0x7530

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    :cond_1b
    const-string v35, "usb_setting_mode"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 279
    const-string v35, "CTC"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_1c

    .line 280
    const-string v35, "usb_setting_mode"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "reset usb_setting_mode to 0"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1c
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_1d

    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "salesCode = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1d
    const-string v35, "TMB"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 289
    const-string v35, "auto_time"

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    const-string v35, "auto_time_zone"

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    :cond_1e
    const/16 v35, 0x1

    const-string v36, "easy_mode_switch"

    const/16 v37, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_24

    .line 295
    :try_start_0
    const-string v35, "com.sec.android.easysettings"

    const/16 v36, 0x3

    const/16 v37, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_b
    const-string v35, "accessibility_enabled"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-eqz v35, :cond_3

    .line 309
    const-string v35, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/NotificationManager;

    .line 310
    .local v24, "nManager":Landroid/app/NotificationManager;
    const v26, 0xd20fe

    .line 312
    .local v26, "notificationID":I
    new-instance v25, Landroid/app/Notification;

    invoke-direct/range {v25 .. v25}, Landroid/app/Notification;-><init>()V

    .line 313
    .local v25, "notification":Landroid/app/Notification;
    const v35, 0x7f020314

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 314
    const-wide/16 v35, 0x0

    move-wide/from16 v0, v35

    move-object/from16 v2, v25

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 315
    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v35, v0

    or-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 317
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 318
    .local v16, "mIntent":Landroid/content/Intent;
    const-string v35, "android.settings.ACCESSIBILITY_SETTINGS"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v16

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 320
    .local v28, "pi":Landroid/app/PendingIntent;
    const v35, 0x7f0906c7

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    const v36, 0x7f0906c8

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 322
    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 171
    .end local v15    # "isOn":Z
    .end local v16    # "mIntent":Landroid/content/Intent;
    .end local v21    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v24    # "nManager":Landroid/app/NotificationManager;
    .end local v25    # "notification":Landroid/app/Notification;
    .end local v26    # "notificationID":I
    .end local v28    # "pi":Landroid/app/PendingIntent;
    .end local v32    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v17    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1f
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 176
    .end local v17    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_20
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 185
    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 203
    .restart local v15    # "isOn":Z
    .restart local v21    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_22
    const/16 v35, 0x0

    goto/16 :goto_9

    .line 237
    .restart local v32    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_23
    const/16 v35, 0x7530

    goto/16 :goto_a

    .line 296
    :catch_0
    move-exception v10

    .line 297
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const-string v35, "SettingsIntentReceiver"

    const-string v36, " Couldn\'t find package : com.sec.android.easysettings"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 302
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :cond_24
    :try_start_1
    const-string v35, "com.sec.android.easysettings"

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    .line 303
    :catch_1
    move-exception v10

    .line 304
    .restart local v10    # "e":Ljava/lang/IllegalArgumentException;
    const-string v35, "SettingsIntentReceiver"

    const-string v36, " Couldn\'t find package : com.sec.android.easysettings"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 325
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "isOn":Z
    .end local v21    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v32    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_25
    const-string v35, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2b

    .line 326
    const-string v35, "android.intent.extra.DOCK_STATE"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 327
    .local v33, "state":I
    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Received dock event with state: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v35, "cradle_enable"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 330
    .local v8, "cradleEnabled":I
    if-nez v33, :cond_28

    .line 332
    const-string v35, "cradle_connect"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    if-eqz v8, :cond_27

    .line 334
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Cradle is enabled without dock"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 336
    .local v20, "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v35

    if-eqz v35, :cond_26

    .line 337
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "SmartDock connected, Do nothing"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_c
    const-string v35, "state"

    const/16 v36, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Sound state changed to device (state: 0)"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 339
    :cond_26
    const-string v35, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c

    .line 346
    .end local v20    # "mSendIntent":Landroid/content/Intent;
    :cond_27
    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Cradle is disabled1: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Sound state is device"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    :cond_28
    const/16 v35, 0x7

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    .line 351
    const-string v35, "cradle_connect"

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    if-eqz v8, :cond_2a

    .line 353
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Cradle is enabled with dock"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 355
    .restart local v20    # "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v35

    if-eqz v35, :cond_29

    .line 356
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "SmartDock connected, Do nothing"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_d
    const-string v35, "state"

    const/16 v36, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Sound state changed to line out (state: 1)"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 358
    :cond_29
    const-string v35, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    .line 365
    .end local v20    # "mSendIntent":Landroid/content/Intent;
    :cond_2a
    const-string v35, "SettingsIntentReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Cradle is disabled2: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Sound state is device"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 369
    .end local v8    # "cradleEnabled":I
    .end local v33    # "state":I
    :cond_2b
    const-string v35, "com.sec.samsung.torchwidget.torch_on_1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2c

    .line 370
    const/16 v35, 0xe

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 371
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_3

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "SecHardwareInterface.setFlashLed(LIGHT_MIN)"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 372
    :cond_2c
    const-string v35, "com.sec.samsung.torchwidget.torch_on_2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2d

    .line 373
    const/16 v35, 0x6

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 374
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_3

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "SecHardwareInterface.setFlashLed(LIGHT_STANDARD)"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 375
    :cond_2d
    const-string v35, "com.sec.samsung.torchwidget.torch_on_3"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2e

    .line 376
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 377
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_3

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "SecHardwareInterface.setFlashLed(LIGHT_MAX)"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    :cond_2e
    const-string v35, "com.sec.samsung.torchwidget.torch_off"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2f

    .line 379
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 380
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_3

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "SecHardwareInterface.setFlashLed(LIGHT_OFF)"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 383
    :cond_2f
    const-string v35, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_30

    .line 384
    const-string v35, "persist.sys.roaming_menu"

    const-string v36, "roaming_menu"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v35, "persist.sys.tether_data"

    const-string v36, "tether_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 388
    :cond_30
    const-string v35, "android.intent.action.ACTION_ASSISTIVE_OFF"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_31

    .line 389
    const-string v35, "torch_light"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    const/16 v35, 0x0

    :try_start_2
    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 395
    :goto_e
    const-string v35, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 396
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    const v35, 0x7f020311

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 392
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :catch_2
    move-exception v10

    .line 393
    .local v10, "e":Ljava/lang/Exception;
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Could not turn off torch light "

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 397
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_31
    const-string v35, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_32

    .line 398
    const-string v35, "torch_light"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    const/16 v35, 0x0

    :try_start_3
    invoke-static/range {v35 .. v35}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 404
    :goto_f
    const-string v35, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 405
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    const v35, 0x7f020311

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 401
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :catch_3
    move-exception v10

    .line 402
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Could not turn off torch light "

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 406
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_32
    const-string v35, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_34

    .line 408
    sget-boolean v35, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v35, :cond_33

    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Limit brightness"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_33
    const-string v35, "max_brightness"

    const/16 v36, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 410
    .local v18, "mMaxBrightness":I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 411
    .restart local v32    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 412
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v35, "pref_siop_brightness"

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 414
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "mMaxBrightness":I
    .end local v32    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_34
    const-string v35, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_35

    .line 415
    const-string v35, "change_alert"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    const-string v35, "remote_control"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    const-string v35, "samsung_signin"

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 466
    :cond_35
    const-string v35, "android.settings.EAS_POLICY_STATE_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 467
    const-string v35, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 468
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v9, :cond_36

    const/16 v35, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v22

    .line 470
    .local v22, "maxTimeout":J
    :goto_10
    const-string v35, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 473
    .local v14, "isDeviceLockTime":Z
    const-wide/16 v35, 0x1

    cmp-long v35, v22, v35

    if-gez v35, :cond_3

    .line 474
    const-string v35, "SettingsIntentReceiver"

    const-string v36, "Max timeout is removed. Rollback timeout value"

    invoke-static/range {v35 .. v36}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v35, "screen_off_timeout"

    const-string v36, "screen_off_timeout_rollback"

    const/16 v37, 0x7530

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    const-string v36, "lock_screen_lock_after_timeout"

    const-string v37, "lock_after_timeout_rollback"

    if-eqz v14, :cond_37

    const v35, 0x927c0

    :goto_11
    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 468
    .end local v14    # "isDeviceLockTime":Z
    .end local v22    # "maxTimeout":J
    :cond_36
    const-wide/16 v22, 0x0

    goto :goto_10

    .line 477
    .restart local v14    # "isDeviceLockTime":Z
    .restart local v22    # "maxTimeout":J
    :cond_37
    const/16 v35, 0x1388

    goto :goto_11

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
