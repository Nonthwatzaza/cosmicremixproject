.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickLaunchButton"
.end annotation


# instance fields
.field final CLASS_NAME:Ljava/lang/String;

.field final PACKAGE_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V
    .locals 1

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    const-string v0, "com.sec.android.app.controlpanel"

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->PACKAGE_NAME:Ljava/lang/String;

    .line 1275
    const-string v0, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    .param p2, "x1"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;

    .prologue
    .line 1273
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1280
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1282
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1283
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    const v2, 0x10004000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1285
    const-string v2, "com.sec.android.app.controlpanel"

    const-string v3, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1287
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hide(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SmartSwitcherRecentsPanelView"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
