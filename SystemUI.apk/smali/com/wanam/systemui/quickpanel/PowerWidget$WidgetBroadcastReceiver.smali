.class Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;


# direct methods
.method private constructor <init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanam/systemui/quickpanel/PowerWidget;Lcom/wanam/systemui/quickpanel/PowerWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wanam/systemui/quickpanel/PowerWidget;
    .param p2, "x1"    # Lcom/wanam/systemui/quickpanel/PowerWidget$1;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->updateWidget()V

    .line 274
    return-void

    .line 264
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    # invokes: Lcom/wanam/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V
    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->access$100(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    .line 266
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setupWidget()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-static {p1, p2}, Lcom/wanam/systemui/quickpanel/PowerButton;->handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
