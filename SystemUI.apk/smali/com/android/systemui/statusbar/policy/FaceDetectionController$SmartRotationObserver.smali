.class Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;
.super Landroid/database/ContentObserver;
.source "FaceDetectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FaceDetectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartRotationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)V
    .locals 1

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$100(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartRotationMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$202(Lcom/android/systemui/statusbar/policy/FaceDetectionController;I)I

    .line 89
    const-string v0, "StatusBar.FaceDetectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: isSmartRotationMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartStayMode:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$000(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartRotationMode:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$200(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartStayMode:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$000(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # setter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$302(Lcom/android/systemui/statusbar/policy/FaceDetectionController;Z)Z

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$400(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$300(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Z

    move-result v2

    # invokes: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$500(Lcom/android/systemui/statusbar/policy/FaceDetectionController;IZ)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$600(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Landroid/app/StatusBarManager;

    move-result-object v0

    const-string v1, "face"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$300(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 97
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    # setter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$302(Lcom/android/systemui/statusbar/policy/FaceDetectionController;Z)Z

    goto :goto_0
.end method
