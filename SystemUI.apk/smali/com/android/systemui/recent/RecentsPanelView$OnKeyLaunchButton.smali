.class final Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnKeyLaunchButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p2, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$1;

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1333
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 1334
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 1337
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
