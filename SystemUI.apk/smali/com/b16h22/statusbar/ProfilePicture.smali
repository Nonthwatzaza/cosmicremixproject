.class public Lcom/b16h22/statusbar/ProfilePicture;
.super Landroid/widget/ImageView;
.source "ProfilePicture.java"


# instance fields
.field imageUri:Ljava/lang/String;

.field profilePicture:Landroid/widget/ImageView;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const v4, 0x7f0d0149

    invoke-virtual {p0, v4}, Lcom/b16h22/statusbar/ProfilePicture;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/b16h22/statusbar/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    .line 23
    const-string v4, "EvoPrefsFile"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 24
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "profilePic"

    const-string v5, "null"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/b16h22/statusbar/ProfilePicture;->imageUri:Ljava/lang/String;

    .line 25
    iget-object v4, p0, Lcom/b16h22/statusbar/ProfilePicture;->imageUri:Ljava/lang/String;

    const-string v5, "null"

    if-ne v4, v5, :cond_0

    .line 26
    iget-object v4, p0, Lcom/b16h22/statusbar/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    const v5, 0x7f020359

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    :goto_0
    new-instance v1, Lcom/b16h22/statusbar/ProfilePicture$1;

    invoke-direct {v1, p0, p1}, Lcom/b16h22/statusbar/ProfilePicture$1;-><init>(Lcom/b16h22/statusbar/ProfilePicture;Landroid/content/Context;)V

    .line 45
    .local v1, "mMediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/b16h22/statusbar/ProfilePicture$2;

    invoke-direct {v2, p0, p1}, Lcom/b16h22/statusbar/ProfilePicture$2;-><init>(Lcom/b16h22/statusbar/ProfilePicture;Landroid/content/Context;)V

    .line 58
    .local v2, "mReceiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.b16h22.statusbar.CHANGE_PROFILE_PICTURE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "file"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void

    .line 28
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "mMediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v2    # "mReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    iget-object v4, p0, Lcom/b16h22/statusbar/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/b16h22/statusbar/ProfilePicture;->imageUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method
