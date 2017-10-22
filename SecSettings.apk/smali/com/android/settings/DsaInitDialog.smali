.class public Lcom/android/settings/DsaInitDialog;
.super Landroid/app/Activity;
.source "DsaInitDialog.java"


# instance fields
.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DsaInitDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/DsaInitDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_init_process"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 37
    .local v4, "window":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 38
    const/high16 v5, 0x3f400000    # 0.75f

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/DsaInitDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x4

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 42
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090ebe

    invoke-virtual {p0, v5}, Lcom/android/settings/DsaInitDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "initDialogInform":Ljava/lang/String;
    const v5, 0x7f090ec1

    invoke-virtual {p0, v5}, Lcom/android/settings/DsaInitDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "initDialogInformTitle":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 51
    const v5, 0x7f090040

    invoke-virtual {p0, v5}, Lcom/android/settings/DsaInitDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/DsaInitDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/DsaInitDialog$1;-><init>(Lcom/android/settings/DsaInitDialog;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    const v5, 0x7f090041

    invoke-virtual {p0, v5}, Lcom/android/settings/DsaInitDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/DsaInitDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/DsaInitDialog$2;-><init>(Lcom/android/settings/DsaInitDialog;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    new-instance v5, Lcom/android/settings/DsaInitDialog$3;

    invoke-direct {v5, p0}, Lcom/android/settings/DsaInitDialog$3;-><init>(Lcom/android/settings/DsaInitDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    new-instance v5, Lcom/android/settings/DsaInitDialog$4;

    invoke-direct {v5, p0}, Lcom/android/settings/DsaInitDialog$4;-><init>(Lcom/android/settings/DsaInitDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 105
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    const-string v0, "DsaInitDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    const-string v0, "DsaInitDialog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    const-string v0, "DsaInitDialog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "DsaInitDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 113
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 127
    const-string v0, "DsaInitDialog"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
