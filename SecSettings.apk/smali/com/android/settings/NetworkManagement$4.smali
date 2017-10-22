.class Lcom/android/settings/NetworkManagement$4;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetworkManagement;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$4;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 450
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$4;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetworkManagement;->access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 451
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$4;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v2}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "paging_mode"

    iget-object v2, p0, Lcom/android/settings/NetworkManagement$4;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetworkManagement;->access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$4;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetworkManagement;->access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 456
    .local v1, "pagingMode":I
    :goto_1
    const-string v2, "persist.sys.bpmsetting.enable"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v2, "NetworkManagement"

    const-string v3, "Receive BPM_Enable CheckEvent"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :try_start_0
    sget-object v2, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    # getter for: Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B
    invoke-static {}, Lcom/android/settings/NetworkManagement;->access$300()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/settings/ISimCardManagerService;->invokeOemRilRequestRaw([BLandroid/os/Message;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_2
    return-void

    .end local v1    # "pagingMode":I
    :cond_0
    move v2, v4

    .line 451
    goto :goto_0

    :cond_1
    move v1, v4

    .line 455
    goto :goto_1

    .line 464
    .restart local v1    # "pagingMode":I
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
