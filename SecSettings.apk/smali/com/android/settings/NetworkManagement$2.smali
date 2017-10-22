.class Lcom/android/settings/NetworkManagement$2;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NetworkManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$2;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 227
    invoke-static {p2}, Lcom/android/settings/ISimCardManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/ISimCardManagerService;

    move-result-object v0

    sput-object v0, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    .line 228
    iget-object v0, p0, Lcom/android/settings/NetworkManagement$2;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->initUI()V
    invoke-static {v0}, Lcom/android/settings/NetworkManagement;->access$000(Lcom/android/settings/NetworkManagement;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/NetworkManagement$2;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->resumeUI()V
    invoke-static {v0}, Lcom/android/settings/NetworkManagement;->access$100(Lcom/android/settings/NetworkManagement;)V

    .line 230
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 233
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    .line 234
    return-void
.end method
