.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 1052
    return-void
.end method
