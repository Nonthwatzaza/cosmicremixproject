.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->handleOnClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mThumbnailScaleUpStarted:Z

    .line 1113
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHighEndGfx:Z
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1500(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hideWindow()V

    .line 1119
    :cond_1
    return-void
.end method
