.class Lcom/android/settings/DsaInitDialog$1;
.super Ljava/lang/Object;
.source "DsaInitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 51
    iput-object p1, p0, Lcom/android/settings/DsaInitDialog$1;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v4, 0x1

    .line 53
    const-string v1, "DsaInitDialog"

    const-string v2, "Select Yes"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/android/settings/DsaInitDialog$1;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v1}, Lcom/android/settings/DsaInitDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_init_process"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.DsaMainParser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const-string v1, "extra_changed_imsi"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string v1, "extra_init_dialog"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/android/settings/DsaInitDialog$1;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/DsaInitDialog;->startActivity(Landroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/DsaInitDialog$1;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v1}, Lcom/android/settings/DsaInitDialog;->finish()V

    .line 66
    return-void
.end method
