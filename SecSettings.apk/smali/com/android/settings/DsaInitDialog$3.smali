.class Lcom/android/settings/DsaInitDialog$3;
.super Ljava/lang/Object;
.source "DsaInitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DsaInitDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DsaInitDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/DsaInitDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/DsaInitDialog$3;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/settings/DsaInitDialog$3;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v1}, Lcom/android/settings/DsaInitDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_init_process"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "DsaInitDialog"

    const-string v2, "Network Management calling startActivity"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    const-string v1, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "extra_changed_imsi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/android/settings/DsaInitDialog$3;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/DsaInitDialog;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/DsaInitDialog$3;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v1}, Lcom/android/settings/DsaInitDialog;->finish()V

    .line 91
    return-void
.end method
