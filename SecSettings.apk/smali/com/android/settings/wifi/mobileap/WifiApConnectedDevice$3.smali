.class Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x5

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$100(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$100(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/app/AlertDialog;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$000(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$000(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V

    goto :goto_0
.end method
