.class Lcom/android/settings/SoundSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoundSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/settings/SoundSettings$6;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 524
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/settings/SoundSettings$6;->this$0:Lcom/android/settings/SoundSettings;

    # invokes: Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$800(Lcom/android/settings/SoundSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibrate"

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/SoundSettings$6;->this$0:Lcom/android/settings/SoundSettings;

    # invokes: Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$800(Lcom/android/settings/SoundSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mute"

    if-ne v1, v2, :cond_2

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings$6;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$900(Lcom/android/settings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 531
    :cond_1
    :goto_0
    return-void

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings$6;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$900(Lcom/android/settings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
