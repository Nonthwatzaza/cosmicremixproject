.class Lcom/android/settings/EasyModeSettings$4;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EasyModeSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$4;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 261
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$4;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v1, v1, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "easymode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const-string v1, "easymode_from"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$4;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 1_1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v2, Lcom/android/settings/EasyModeSettings$EasySettingsStateChanger;

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$4;->this$0:Lcom/android/settings/EasyModeSettings;

    const-string v3, "com.sec.android.easysettings"

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/EasyModeSettings$EasySettingsStateChanger;-><init>(Lcom/android/settings/EasyModeSettings;Ljava/lang/String;I)V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/EasyModeSettings$EasySettingsStateChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    return-void
.end method
