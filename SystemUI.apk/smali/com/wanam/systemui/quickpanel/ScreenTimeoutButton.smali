.class public Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;
.super Lcom/wanam/systemui/quickpanel/PowerButton;
.source "ScreenTimeoutButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_TIMEOUT_HIGH:I = 0x1d4c0

.field private static final SCREEN_TIMEOUT_LOW:I = 0x7530

.field private static final SCREEN_TIMEOUT_MAX:I = 0x927c0

.field private static final SCREEN_TIMEOUT_MIN:I = 0x3a98

.field private static final SCREEN_TIMEOUT_NORMAL:I = 0xea60

.field private static TOAST:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleScreenTimeout"

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getScreenTimeout(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static timeoutToString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 130
    const/4 v5, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 136
    .local v3, "tags":[I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    .local v1, "res":Landroid/content/res/Resources;
    div-int/lit16 v4, p1, 0x3e8

    .line 140
    .local v4, "tmp":I
    aget v5, v3, v8

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "sTimeout":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_0

    .line 143
    mul-int/lit8 v5, v0, 0x3c

    div-int/2addr v4, v5

    .line 144
    aget v5, v3, v9

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v2

    .line 130
    nop

    :array_0
    .array-data 4
        0x50b005b
        0x50b005c
        0x50b005d
    .end array-data
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 151
    const v0, 0x50b004a

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 6

    .prologue
    .line 74
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v1

    .line 77
    .local v1, "screentimeout":I
    const/16 v2, 0x3a98

    if-ge v1, v2, :cond_1

    .line 78
    const/16 v1, 0x3a98

    .line 91
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    sget-object v2, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 97
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 101
    :cond_0
    sget-object v2, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 104
    sget-object v2, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-static {v0, v1}, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->timeoutToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget-object v2, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    const/16 v3, 0x11

    sget-object v4, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getXOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getYOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 106
    sget-object v2, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    return-void

    .line 79
    :cond_1
    const/16 v2, 0x7530

    if-ge v1, v2, :cond_2

    .line 80
    const/16 v1, 0x7530

    goto :goto_0

    .line 81
    :cond_2
    const v2, 0xea60

    if-ge v1, v2, :cond_3

    .line 82
    const v1, 0xea60

    goto :goto_0

    .line 83
    :cond_3
    const v2, 0x1d4c0

    if-ge v1, v2, :cond_4

    .line 84
    const v1, 0x1d4c0

    goto :goto_0

    .line 85
    :cond_4
    const v2, 0x927c0

    if-ge v1, v2, :cond_5

    .line 86
    const v1, 0x927c0

    goto :goto_0

    .line 88
    :cond_5
    const/16 v1, 0x3a98

    goto :goto_0
.end method

.method protected updateState()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x5

    .line 39
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 66
    const v0, 0x50200a8

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    .line 67
    iput v2, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    .line 70
    :goto_0
    return-void

    .line 41
    :sswitch_0
    const v0, 0x50200a4

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    .line 42
    iput v2, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 46
    :sswitch_1
    const v0, 0x50200a7

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    .line 47
    iput v1, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 51
    :sswitch_2
    const v0, 0x50200a5

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    .line 52
    iput v1, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 56
    :sswitch_3
    const v0, 0x50200a6

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    .line 57
    iput v1, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 61
    :sswitch_4
    const v0, 0x50200a3

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x927c0 -> :sswitch_4
    .end sparse-switch
.end method
