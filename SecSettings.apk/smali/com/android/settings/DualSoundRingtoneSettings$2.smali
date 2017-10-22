.class Lcom/android/settings/DualSoundRingtoneSettings$2;
.super Ljava/lang/Object;
.source "DualSoundRingtoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DualSoundRingtoneSettings;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 131
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$200(Lcom/android/settings/DualSoundRingtoneSettings;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/DualSoundRingtoneSettings;->access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$200(Lcom/android/settings/DualSoundRingtoneSettings;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/DualSoundRingtoneSettings;->access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V

    .line 150
    :cond_1
    :goto_1
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/DualSoundRingtoneSettings;->access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/DualSoundRingtoneSettings;->access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v4, v1, v4}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V

    goto :goto_1
.end method
