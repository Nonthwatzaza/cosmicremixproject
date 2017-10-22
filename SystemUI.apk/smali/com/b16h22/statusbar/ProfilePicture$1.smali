.class Lcom/b16h22/statusbar/ProfilePicture$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfilePicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b16h22/statusbar/ProfilePicture;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b16h22/statusbar/ProfilePicture;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/ProfilePicture;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->this$0:Lcom/b16h22/statusbar/ProfilePicture;

    iput-object p2, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->val$context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->val$context:Landroid/content/Context;

    const-string v2, "EvoPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->this$0:Lcom/b16h22/statusbar/ProfilePicture;

    const-string v2, "profilePic"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/b16h22/statusbar/ProfilePicture;->imageUri:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->this$0:Lcom/b16h22/statusbar/ProfilePicture;

    iget-object v1, v1, Lcom/b16h22/statusbar/ProfilePicture;->imageUri:Ljava/lang/String;

    const-string v2, "null"

    if-ne v1, v2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->this$0:Lcom/b16h22/statusbar/ProfilePicture;

    iget-object v1, v1, Lcom/b16h22/statusbar/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    const v2, 0x7f020359

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->this$0:Lcom/b16h22/statusbar/ProfilePicture;

    iget-object v1, v1, Lcom/b16h22/statusbar/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/b16h22/statusbar/ProfilePicture$1;->this$0:Lcom/b16h22/statusbar/ProfilePicture;

    iget-object v2, v2, Lcom/b16h22/statusbar/ProfilePicture;->imageUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method
