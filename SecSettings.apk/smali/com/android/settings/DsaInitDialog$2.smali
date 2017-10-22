.class Lcom/android/settings/DsaInitDialog$2;
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
    .line 68
    iput-object p1, p0, Lcom/android/settings/DsaInitDialog$2;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 70
    const-string v0, "DsaInitDialog"

    const-string v1, "Select No"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/settings/DsaInitDialog$2;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v0}, Lcom/android/settings/DsaInitDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsa_init_process"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/DsaInitDialog$2;->this$0:Lcom/android/settings/DsaInitDialog;

    invoke-virtual {v0}, Lcom/android/settings/DsaInitDialog;->finish()V

    .line 77
    return-void
.end method
