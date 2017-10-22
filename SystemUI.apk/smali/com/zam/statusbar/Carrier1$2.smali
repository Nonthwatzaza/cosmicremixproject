.class Lcom/zam/statusbar/Carrier1$2;
.super Landroid/content/BroadcastReceiver;
.source "Carrier1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zam/statusbar/Carrier1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/statusbar/Carrier1;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zam/statusbar/Carrier1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zam/statusbar/Carrier1$2;->this$0:Lcom/zam/statusbar/Carrier1;

    iput-object p2, p0, Lcom/zam/statusbar/Carrier1$2;->val$context:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/zam/statusbar/Carrier1$2;->this$0:Lcom/zam/statusbar/Carrier1;

    const-string v3, "PIC1"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zam/statusbar/Carrier1;->uri:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/zam/statusbar/Carrier1$2;->this$0:Lcom/zam/statusbar/Carrier1;

    iget-object v2, v2, Lcom/zam/statusbar/Carrier1;->profilePicture:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zam/statusbar/Carrier1$2;->this$0:Lcom/zam/statusbar/Carrier1;

    iget-object v3, v3, Lcom/zam/statusbar/Carrier1;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 50
    iget-object v2, p0, Lcom/zam/statusbar/Carrier1$2;->val$context:Landroid/content/Context;

    const-string v3, "EvoPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "carrier1"

    iget-object v3, p0, Lcom/zam/statusbar/Carrier1$2;->this$0:Lcom/zam/statusbar/Carrier1;

    iget-object v3, v3, Lcom/zam/statusbar/Carrier1;->uri:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method
