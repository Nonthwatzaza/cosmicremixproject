.class Lcom/android/settings/cloud/CloudSettingsMainFragment$2;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v2, 0x7f090e7e

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 614
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # invokes: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_0
.end method
