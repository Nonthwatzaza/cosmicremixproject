.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartSwitcherRecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 652
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->needMWList:Ljava/lang/Boolean;

    .line 653
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZ)V

    .line 654
    return-void
.end method
