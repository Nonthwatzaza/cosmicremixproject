.class Lcom/android/settings/ApnSettings$CompleteRunnable;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompleteRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/settings/ApnSettings$CompleteRunnable;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ApnSettings;
    .param p2, "x1"    # Lcom/android/settings/ApnSettings$1;

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings$CompleteRunnable;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 730
    # getter for: Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/android/settings/ApnSettings$CompleteRunnable;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/settings/ApnSettings$CompleteRunnable;->this$0:Lcom/android/settings/ApnSettings;

    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    iget-object v2, p0, Lcom/android/settings/ApnSettings$CompleteRunnable;->this$0:Lcom/android/settings/ApnSettings;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    # setter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v0, v1}, Lcom/android/settings/ApnSettings;->access$302(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$CompleteRunnable;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->sendEmptyMessage(I)Z

    .line 738
    :cond_1
    return-void
.end method
