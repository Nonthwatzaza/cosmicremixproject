.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;
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
    .line 1035
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1037
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "mDoneButton : OnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->save()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 1040
    return-void
.end method
