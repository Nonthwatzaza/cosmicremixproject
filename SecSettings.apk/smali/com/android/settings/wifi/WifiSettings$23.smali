.class Lcom/android/settings/wifi/WifiSettings$23;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    .line 2867
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$2300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 2871
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v2

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->manageNetwork:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    if-nez v2, :cond_0

    .line 2879
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v1

    .line 2881
    .local v1, "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v1, :cond_0

    .line 2882
    invoke-interface {v1}, Lcom/android/settings/guide/GuideFragmentCallback;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    .line 2884
    .local v0, "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v0, :cond_0

    .line 2885
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2891
    .end local v0    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v1    # "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiSettings;->access$2302(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiNewDialog;)Lcom/android/settings/wifi/WifiNewDialog;

    .line 2892
    sput-boolean v4, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2893
    sput-boolean v4, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 2894
    sput-boolean v4, Lcom/android/settings/wifi/WifiSettings;->manageNetwork:Z

    .line 2895
    sput v4, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    .line 2896
    sput v4, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 2897
    sput v4, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 2898
    const-string v2, "WifiSettings"

    const-string v3, "vzwViewFlag sets to false : mDismissListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_1
    return-void
.end method
