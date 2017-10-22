.class Lcom/music/next$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "next.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/music/next;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final this$0:Lcom/music/next;


# direct methods
.method constructor <init>(Lcom/music/next;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/music/next$SettingsObserver;->this$0:Lcom/music/next;

    return-void
.end method

.method static access$0(Lcom/music/next$SettingsObserver;)Lcom/music/next;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/next$SettingsObserver;->this$0:Lcom/music/next;

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
    .line 46
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/next$SettingsObserver;->this$0:Lcom/music/next;

    invoke-virtual {v3}, Lcom/music/next;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v1, v3

    .line 47
    move-object v3, v1

    const-string v4, "mControlStyle"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    move-object v3, v1

    const-string v4, "poke"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/music/next$SettingsObserver;->this$0:Lcom/music/next;

    iget v3, v3, Lcom/music/next;->mControlStyle:I

    const/4 v4, 0x0

    if-ne v3, v4, :cond_0

    .line 55
    move-object v3, v0

    iget-object v3, v3, Lcom/music/next$SettingsObserver;->this$0:Lcom/music/next;

    invoke-virtual {v3}, Lcom/music/next;->poke()V

    :cond_0
    return-void
.end method
