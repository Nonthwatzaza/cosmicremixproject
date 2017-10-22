.class Lcom/potato/systemui/clocks/Clock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/systemui/clocks/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/systemui/clocks/Clock;


# direct methods
.method constructor <init>(Lcom/potato/systemui/clocks/Clock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->this$0:Lcom/potato/systemui/clocks/Clock;

    .line 121
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 122
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v1}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "status_bar_am_pm"

    .line 126
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    const-string v1, "status_bar_clock"

    .line 128
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->updateSettings()V
    invoke-static {v0}, Lcom/potato/systemui/clocks/Clock;->access$22(Lcom/potato/systemui/clocks/Clock;)V

    .line 136
    return-void
.end method
