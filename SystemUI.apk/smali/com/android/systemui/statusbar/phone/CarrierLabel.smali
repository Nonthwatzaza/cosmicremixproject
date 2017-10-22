.class public Lcom/android/systemui/statusbar/phone/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"


# instance fields
.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCB:Ljava/lang/String;

.field private mLastPlmn:Ljava/lang/String;

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field private mLastSpn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastCB:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    invoke-direct {p0, v2, v1, v2, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 75
    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z

    return v0
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z

    .line 226
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;

    .line 227
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z

    .line 228
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 82
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 104
    :cond_0
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 151
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_0

    if-ne p3, v1, :cond_0

    .line 153
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v1, :cond_0

    .line 154
    const/4 p1, 0x0

    .line 160
    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    .line 161
    .local v0, "plmnValid":Z
    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    .local v1, "spnValid":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "str":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    move v0, v3

    .line 160
    goto :goto_0

    .restart local v0    # "plmnValid":Z
    :cond_2
    move v1, v3

    .line 161
    goto :goto_1

    .line 165
    .restart local v1    # "spnValid":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 166
    move-object v2, p4

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_2

    .line 167
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 168
    move-object v2, p2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_2

    .line 170
    .end local v2    # "str":Ljava/lang/String;
    :cond_5
    const-string v2, ""

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_2
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 179
    const-string v5, "CarrierLabel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNetworkName showSpn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " spn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " showPlmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " plmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 187
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v0, :cond_0

    .line 188
    const/4 p1, 0x0

    .line 194
    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v0

    .line 195
    .local v1, "plmnValid":Z
    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v0

    .line 196
    .local v2, "spnValid":Z
    :goto_1
    if-eqz p5, :cond_3

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 197
    .local v0, "cbValid":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 198
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "str":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-void

    .end local v0    # "cbValid":Z
    .end local v1    # "plmnValid":Z
    .end local v2    # "spnValid":Z
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    move v1, v4

    .line 194
    goto :goto_0

    .restart local v1    # "plmnValid":Z
    :cond_2
    move v2, v4

    .line 195
    goto :goto_1

    .restart local v2    # "spnValid":Z
    :cond_3
    move v0, v4

    .line 196
    goto :goto_2

    .line 200
    .restart local v0    # "cbValid":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_3

    .line 202
    .end local v3    # "str":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_3

    .line 205
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    const-string v3, ""

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_3

    .line 209
    .end local v3    # "str":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_3

    .line 211
    .end local v3    # "str":Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    .line 212
    move-object v3, p4

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_3

    .line 213
    .end local v3    # "str":Ljava/lang/String;
    :cond_9
    if-eqz v2, :cond_a

    .line 214
    move-object v3, p2

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_3

    .line 216
    .end local v3    # "str":Ljava/lang/String;
    :cond_a
    const-string v3, ""

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_3
.end method
