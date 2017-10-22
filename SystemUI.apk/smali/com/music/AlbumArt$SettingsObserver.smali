.class Lcom/music/AlbumArt$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/music/AlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final this$0:Lcom/music/AlbumArt;


# direct methods
.method constructor <init>(Lcom/music/AlbumArt;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/music/AlbumArt$SettingsObserver;->this$0:Lcom/music/AlbumArt;

    return-void
.end method

.method static access$0(Lcom/music/AlbumArt$SettingsObserver;)Lcom/music/AlbumArt;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/AlbumArt$SettingsObserver;->this$0:Lcom/music/AlbumArt;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method observe()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/AlbumArt$SettingsObserver;->this$0:Lcom/music/AlbumArt;

    invoke-virtual {v3}, Lcom/music/AlbumArt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v1, v3

    .line 53
    move-object v3, v1

    const-string v4, "trackname"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    move-object v3, v1

    const-string v4, ""

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    move-object v3, v1

    const-string v4, "usb"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/AlbumArt$SettingsObserver;->this$0:Lcom/music/AlbumArt;

    iget-object v4, v4, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 63
    move v4, v2

    const/4 v5, 0x0

    if-ne v4, v5, :cond_0

    .line 64
    move-object v4, v0

    iget-object v4, v4, Lcom/music/AlbumArt$SettingsObserver;->this$0:Lcom/music/AlbumArt;

    invoke-virtual {v4}, Lcom/music/AlbumArt;->updateInfo()V

    .line 66
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/music/AlbumArt$SettingsObserver;->this$0:Lcom/music/AlbumArt;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/music/AlbumArt;->setVisibility(I)V

    goto :goto_0
.end method
