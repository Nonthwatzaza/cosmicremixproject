.class Lcom/zam/statusbar/Carrier2$1;
.super Landroid/content/BroadcastReceiver;
.source "Carrier2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zam/statusbar/Carrier2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/statusbar/Carrier2;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zam/statusbar/Carrier2;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zam/statusbar/Carrier2$1;->this$0:Lcom/zam/statusbar/Carrier2;

    iput-object p2, p0, Lcom/zam/statusbar/Carrier2$1;->val$context:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/zam/statusbar/Carrier2$1;->val$context:Landroid/content/Context;

    const-string v2, "EvoPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/zam/statusbar/Carrier2$1;->this$0:Lcom/zam/statusbar/Carrier2;

    const-string v2, "carrier2"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zam/statusbar/Carrier2;->imageUri:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/zam/statusbar/Carrier2$1;->this$0:Lcom/zam/statusbar/Carrier2;

    iget-object v1, v1, Lcom/zam/statusbar/Carrier2;->profilePicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zam/statusbar/Carrier2$1;->this$0:Lcom/zam/statusbar/Carrier2;

    iget-object v2, v2, Lcom/zam/statusbar/Carrier2;->imageUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 42
    return-void
.end method
