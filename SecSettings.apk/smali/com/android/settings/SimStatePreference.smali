.class public Lcom/android/settings/SimStatePreference;
.super Landroid/preference/Preference;
.source "SimStatePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATA_URI:Landroid/net/Uri;

.field private static rawNumber:Ljava/lang/String;

.field private static rawNumber1:Ljava/lang/String;


# instance fields
.field private activateLayout:Landroid/widget/FrameLayout;

.field private activateView:Landroid/widget/TextView;

.field private bActivatingState:Z

.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private focusItem:I

.field private isAirMode:Z

.field private isLoadLayout:Z

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataPreference:Landroid/preference/Preference;

.field mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

.field private mDualSimAlwaysOn:Landroid/preference/Preference;

.field mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/widget/LinearLayout;

.field public mObserverForURI:Landroid/database/ContentObserver;

.field private mPagingPreference:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mSimEnabler:Lcom/android/settings/SimEnabler;

.field private mSimMode:Ljava/lang/String;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field mThread:Lcom/android/settings/ActivateThread;

.field private network:Landroid/widget/TextView;

.field private phoneNum:Landroid/widget/TextView;

.field private plmmValue_1:Ljava/lang/String;

.field private plmmValue_2:Ljava/lang/String;

.field private pref:Landroid/content/SharedPreferences;

.field private reorder:Z

.field private sim1_select:Z

.field private simIcon:Landroid/widget/ImageView;

.field private simImage1:Landroid/widget/Button;

.field private simImage2:Landroid/widget/Button;

.field private simLockIcon1:Landroid/widget/ImageView;

.field private simLockIcon2:Landroid/widget/ImageView;

.field private simName:Landroid/widget/TextView;

.field private simNameLayout:Landroid/widget/LinearLayout;

.field private tm:Landroid/telephony/TelephonyManager;

.field private viewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SimStatePreference;->DATA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v12, 0x104075c

    const v11, 0x104075b

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iput-object v10, p0, Lcom/android/settings/SimStatePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 98
    iput-object v10, p0, Lcom/android/settings/SimStatePreference;->mPhone1:Lcom/android/internal/telephony/Phone;

    .line 106
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    .line 136
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/settings/SimStatePreference;->focusItem:I

    .line 140
    iput-boolean v9, p0, Lcom/android/settings/SimStatePreference;->isLoadLayout:Z

    .line 142
    iput-boolean v9, p0, Lcom/android/settings/SimStatePreference;->bActivatingState:Z

    .line 146
    const-string v6, "DSDS"

    invoke-static {v6}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/plugin/dsds/PlugInDsdsService;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    .line 749
    new-instance v6, Lcom/android/settings/SimStatePreference$1;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/settings/SimStatePreference$1;-><init>(Lcom/android/settings/SimStatePreference;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mObserverForURI:Landroid/database/ContentObserver;

    .line 819
    new-instance v6, Lcom/android/settings/SimStatePreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/SimStatePreference$2;-><init>(Lcom/android/settings/SimStatePreference;)V

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object p1, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    .line 153
    const v6, 0x7f0400fa

    invoke-virtual {p0, v6}, Lcom/android/settings/SimStatePreference;->setWidgetLayoutResource(I)V

    .line 155
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->tm:Landroid/telephony/TelephonyManager;

    .line 156
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mConnManager:Landroid/net/ConnectivityManager;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, "resolver":Landroid/content/ContentResolver;
    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 160
    const-string v6, "sim_pref"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->pref:Landroid/content/SharedPreferences;

    .line 161
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->editor:Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    .line 164
    const-string v6, "gsm.sim.state_1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    .line 165
    const-string v6, "persist.radio.plmnname_1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 166
    const-string v6, "persist.radio.plmnname_2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 168
    const-string v6, "gsm.sim.operator.alpha"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "spnValue_1":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 170
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spnValue_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput-object v2, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 173
    :cond_0
    const-string v6, "gsm.sim.operator.alpha_1"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "spnValue_2":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spnValue_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object v3, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 178
    :cond_1
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "salesCode":Ljava/lang/String;
    const-string v6, "CHN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "CHM"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "CHC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "TGY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "BRI"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "CTC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "CWT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "FET"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "TWM"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "CHZ"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "CHU"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 183
    :cond_2
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 184
    const-string v6, "gsm.sim.operator.numeric_1"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 185
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "46000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "46002"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "46007"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "460 00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "460 02"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "460 07"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 188
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 196
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "46000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "46002"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "46007"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "460 00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "460 02"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "460 07"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 199
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 209
    :cond_6
    :goto_1
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    .line 210
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "temp_plmmValue_1":Ljava/lang/String;
    const-string v6, "gsm.sim.operator.numeric_1"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "temp_plmmValue_2":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 216
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mast SIM mode is ON plmmValue_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , plmmValue_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 218
    const-string v6, "0"

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 221
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Swap the state - temp_plmmValue_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v6, "52018"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 223
    const-string v6, "dtac"

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 224
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 225
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Swap the state - plmmValue_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_7
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Swap the state - temp_plmmValue_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v6, "52018"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 230
    const-string v6, "dtac"

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 231
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Swap the state - plmmValue_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_8
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSimState_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , mSimState_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "temp_plmmValue_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v6, "52018"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 240
    const-string v6, "dtac"

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 241
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plmmValue_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_9
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "temp_plmmValue_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v6, "52018"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 246
    const-string v6, "dtac"

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 247
    const-string v6, "SimStatePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plmmValue_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_a
    iput-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    .line 251
    iput-boolean v9, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    .line 252
    iput-boolean v9, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    .line 264
    return-void

    .line 191
    .end local v4    # "temp_plmmValue_1":Ljava/lang/String;
    .end local v5    # "temp_plmmValue_2":Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "46001"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v7, "460 01"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 193
    :cond_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    goto/16 :goto_0

    .line 202
    :cond_d
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "46001"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v7, "460 01"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 204
    :cond_e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/SimStatePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimStatePreference;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isLoadLayout:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/SimStatePreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimStatePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/SimStatePreference;->doingActivate(Z)V

    return-void
.end method

.method private checkBPMDisableCase(Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 618
    .line 619
    const-string v1, "persist.sys.dataprefer.simid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 622
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v2, v0}, Landroid/plugin/dsds/PlugInDsdsService;->getNetworkType(I)I

    move-result v2

    .line 623
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v3, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getNetworkType(I)I

    move-result v3

    .line 625
    if-nez v1, :cond_0

    if-ne v2, v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    if-ne v1, v4, :cond_2

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_2

    :cond_1
    move p1, v0

    .line 631
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/SimStatePreference;->isAllSimActivate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 635
    :goto_0
    const-string v1, "SimStatePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBPMDisableCase result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v0

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method private checkDataPreferedDisableCase(Z)Z
    .locals 3

    .prologue
    .line 642
    .line 644
    invoke-direct {p0}, Lcom/android/settings/SimStatePreference;->isAllSimActivate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const/4 p1, 0x0

    .line 648
    :cond_0
    const-string v0, "SimStatePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDataPreferedDisableCase result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return p1
.end method

.method private doingActivate(Z)V
    .locals 1
    .param p1, "bActivating"    # Z

    .prologue
    .line 814
    iput-boolean p1, p0, Lcom/android/settings/SimStatePreference;->bActivatingState:Z

    .line 815
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->setActivateLayout(Z)V

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyChanged()V

    .line 817
    return-void

    .line 815
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimIconLarge(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 713
    .line 716
    const/4 v3, 0x0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 725
    :goto_0
    if-nez p1, :cond_0

    move v0, v1

    .line 726
    :goto_1
    const-string v4, "SimStatePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM 1 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", SIM 2 ICON : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret_sim_icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    .line 746
    :goto_2
    return-object v0

    .line 722
    :catch_0
    move-exception v0

    move v1, v2

    .line 723
    :goto_3
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 725
    goto :goto_1

    .line 730
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 733
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 736
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 739
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 742
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 722
    :catch_1
    move-exception v0

    goto :goto_3

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "sim_Id"    # I

    .prologue
    .line 685
    if-nez p1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initSimStateView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isSim1"    # Z

    .prologue
    const/4 v3, 0x0

    .line 267
    const v0, 0x7f0b019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->mLayout:Landroid/widget/LinearLayout;

    .line 269
    const v0, 0x7f0b0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->network:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0b02c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->phoneNum:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0b0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    .line 274
    const v0, 0x7f0b019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    .line 276
    const v0, 0x7f0b02c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simIcon:Landroid/widget/ImageView;

    .line 277
    const v0, 0x7f0b02c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0b02cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->activateView:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0b02c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    .line 281
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v0, 0x7f0b02ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    .line 283
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->setAirplaneState(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->doPause()V

    .line 289
    :cond_0
    new-instance v0, Lcom/android/settings/SimEnabler;

    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SimEnabler;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    .line 290
    if-eqz p2, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0202dd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-direct {p0, v3}, Lcom/android/settings/SimStatePreference;->setActivateLayout(Z)V

    .line 301
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->updateState()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isLoadLayout:Z

    .line 303
    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0, v3}, Lcom/android/settings/SimStatePreference;->setActivateLayout(Z)V

    goto :goto_0
.end method

.method private isAllSimActivate()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 597
    .line 601
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone1_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 603
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    .line 606
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 610
    :cond_0
    const-string v1, "SimStatePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_1_active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", sim_2_active: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v0, "SimStatePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimState_1: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSimState_2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v2

    :cond_1
    move v0, v2

    .line 601
    goto :goto_0

    :cond_2
    move v3, v2

    .line 603
    goto :goto_1
.end method

.method private setActivateLayout(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 695
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SimStatePreference;->bActivatingState:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 697
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 698
    if-ne v0, v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->activateView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 703
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->activateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 705
    const-string v1, "SimStatePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivateLayout bEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->checkBPMDisableCase(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 708
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->checkDataPreferedDisableCase(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 709
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mDualSimAlwaysOn:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->checkDataPreferedDisableCase(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 710
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->activateView:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private setAirplaneState(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 306
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 307
    .local v0, "bool":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    invoke-direct {p0, v0}, Lcom/android/settings/SimStatePreference;->setActivateLayout(Z)V

    .line 311
    const-string v1, "SimStatePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAirplaneState - enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 306
    .end local v0    # "bool":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDataNetwork(I)V
    .locals 4

    .prologue
    .line 662
    const-string v0, "persist.sys.dataprefer.simid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "persist.sys.dataprefer.backup"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "SimStatePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_DATA_PREFER_SIM_ID_BACKUP is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 669
    const-string v0, "SimStatePreference"

    const-string v1, "switchNetworkTo >> SIM 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v0}, Landroid/plugin/dsds/PlugInDsdsService;->switchToSim2DataNetwork()V

    .line 679
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings/SimStatePreference;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v3, "%%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 681
    return-void

    .line 674
    :cond_0
    const-string v0, "SimStatePreference"

    const-string v1, "switchNetworkTo >> SIM 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v0}, Landroid/plugin/dsds/PlugInDsdsService;->switchToSim1DataNetwork()V

    goto :goto_0
.end method

.method private updateLockIcon(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0202f8

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 456
    const v0, 0x7f0b0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    .line 457
    const v0, 0x7f0b019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    .line 459
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v0, v2}, Landroid/plugin/dsds/PlugInDsdsService;->isSimPinEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->isSimPinEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    :goto_1
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public doPause()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->doPause()V

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->removeObserver()V

    .line 801
    return-void
.end method

.method public doResume()V
    .locals 0

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyChanged()V

    .line 805
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v12, 0x7f04009e

    const v11, 0x7f04009d

    const v10, 0x7f0400fa

    const/4 v9, 0x0

    .line 316
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDualSimAlwaysOn:Landroid/preference/Preference;

    if-nez v6, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v7, "paging_mode"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v7, "data_service_network"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    .line 319
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v7, "button_dsa_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->mDualSimAlwaysOn:Landroid/preference/Preference;

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 324
    .local v4, "inflater":Landroid/view/LayoutInflater;
    move-object v5, p1

    .line 327
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->pref:Landroid/content/SharedPreferences;

    const-string v7, "isSim1"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    .line 329
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 331
    const v2, 0x7f0b02c4

    .line 332
    .local v2, "imageId_1":I
    const v3, 0x7f0b02c5

    .line 334
    .local v3, "imageId_2":I
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    if-eqz v6, :cond_2

    .line 335
    const v0, 0x7f0202da

    .line 336
    .local v0, "imageBg_1":I
    const v1, 0x7f0202db

    .line 342
    .local v1, "imageBg_2":I
    :goto_0
    invoke-virtual {v4, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 343
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    invoke-direct {p0, v5, v6}, Lcom/android/settings/SimStatePreference;->initSimStateView(Landroid/view/View;Z)V

    .line 401
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/settings/SimStatePreference;->updateLockIcon(Landroid/view/View;)V

    .line 403
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    .line 404
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    .line 405
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 408
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 410
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 411
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->simImage1:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->simImage2:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget v6, p0, Lcom/android/settings/SimStatePreference;->focusItem:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 417
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->viewList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/settings/SimStatePreference;->focusItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 420
    :cond_1
    return-object v5

    .line 338
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    :cond_2
    const v0, 0x7f0202d9

    .line 339
    .restart local v0    # "imageBg_1":I
    const v1, 0x7f0202dc

    .restart local v1    # "imageBg_2":I
    goto :goto_0

    .line 344
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_3
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 346
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    if-eqz v6, :cond_4

    .line 348
    const v2, 0x7f0b0197

    .line 349
    .restart local v2    # "imageId_1":I
    const v0, 0x7f020306

    .line 351
    .restart local v0    # "imageBg_1":I
    const v3, 0x7f0b0199

    .line 352
    .restart local v3    # "imageId_2":I
    const v1, 0x7f0202db

    .line 354
    .restart local v1    # "imageBg_2":I
    invoke-virtual {v4, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_1

    .line 356
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_4
    const v2, 0x7f0b02c4

    .line 357
    .restart local v2    # "imageId_1":I
    const v0, 0x7f020305

    .line 359
    .restart local v0    # "imageBg_1":I
    const v3, 0x7f0b02c5

    .line 360
    .restart local v3    # "imageId_2":I
    const v1, 0x7f0202dc

    .line 362
    .restart local v1    # "imageBg_2":I
    invoke-virtual {v4, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 363
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    invoke-direct {p0, v5, v6}, Lcom/android/settings/SimStatePreference;->initSimStateView(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 365
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_5
    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 366
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    if-eqz v6, :cond_6

    .line 367
    const v2, 0x7f0b02c4

    .line 368
    .restart local v2    # "imageId_1":I
    const v0, 0x7f0202da

    .line 370
    .restart local v0    # "imageBg_1":I
    const v3, 0x7f0b02c5

    .line 371
    .restart local v3    # "imageId_2":I
    const v1, 0x7f020305

    .line 373
    .restart local v1    # "imageBg_2":I
    invoke-virtual {v4, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 374
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    invoke-direct {p0, v5, v6}, Lcom/android/settings/SimStatePreference;->initSimStateView(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 377
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_6
    const v2, 0x7f0b0197

    .line 378
    .restart local v2    # "imageId_1":I
    const v0, 0x7f0202d9

    .line 380
    .restart local v0    # "imageBg_1":I
    const v3, 0x7f0b0199

    .line 381
    .restart local v3    # "imageId_2":I
    const v1, 0x7f020306

    .line 383
    .restart local v1    # "imageBg_2":I
    invoke-virtual {v4, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_1

    .line 387
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    .end local v2    # "imageId_1":I
    .end local v3    # "imageId_2":I
    :cond_7
    const v2, 0x7f0b0197

    .line 388
    .restart local v2    # "imageId_1":I
    const v3, 0x7f0b0199

    .line 390
    .restart local v3    # "imageId_2":I
    iget-boolean v6, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    if-eqz v6, :cond_8

    .line 391
    const v0, 0x7f020306

    .line 392
    .restart local v0    # "imageBg_1":I
    const v1, 0x7f020305

    .line 393
    .restart local v1    # "imageBg_2":I
    invoke-virtual {v4, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_1

    .line 395
    .end local v0    # "imageBg_1":I
    .end local v1    # "imageBg_2":I
    :cond_8
    const v0, 0x7f020305

    .line 396
    .restart local v0    # "imageBg_1":I
    const v1, 0x7f020306

    .line 397
    .restart local v1    # "imageBg_2":I
    invoke-virtual {v4, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 425
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings/SimStatePreference;->DATA_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings/SimStatePreference;->mObserverForURI:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 427
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "isSim1"

    iget-boolean v4, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyChanged()V

    .line 452
    :goto_1
    return-void

    .line 430
    :sswitch_0
    iput-boolean v5, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    goto :goto_0

    .line 434
    :sswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    goto :goto_0

    .line 437
    :sswitch_2
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v2, p1}, Lcom/android/settings/SimEnabler;->doClick(Landroid/view/View;)V

    .line 438
    invoke-direct {p0, v5}, Lcom/android/settings/SimStatePreference;->doingActivate(Z)V

    .line 439
    new-instance v2, Lcom/android/settings/ActivateThread;

    iget-object v3, p0, Lcom/android/settings/SimStatePreference;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/settings/ActivateThread;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/SimStatePreference;->mThread:Lcom/android/settings/ActivateThread;

    .line 440
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->mThread:Lcom/android/settings/ActivateThread;

    invoke-virtual {v2, v5}, Lcom/android/settings/ActivateThread;->setDaemon(Z)V

    .line 441
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->mThread:Lcom/android/settings/ActivateThread;

    invoke-virtual {v2}, Lcom/android/settings/ActivateThread;->start()V

    goto :goto_0

    .line 444
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.NetworkManagementSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object v2, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x7f0b0197 -> :sswitch_0
        0x7f0b0199 -> :sswitch_1
        0x7f0b02c4 -> :sswitch_0
        0x7f0b02c5 -> :sswitch_1
        0x7f0b02c7 -> :sswitch_3
        0x7f0b02ca -> :sswitch_2
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/settings/SimStatePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/SimStatePreference;->mObserverForURI:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 762
    return-void
.end method

.method public stateEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 792
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    .line 793
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyChanged()V

    .line 794
    return-void

    .line 792
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateState()V
    .locals 13

    .prologue
    .line 475
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "salesCode":Ljava/lang/String;
    :try_start_0
    sget-object v10, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/settings/ISimCardManagerService;->getLine1Number(I)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings/SimStatePreference;->rawNumber:Ljava/lang/String;

    .line 479
    sget-object v10, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/settings/ISimCardManagerService;->getLine1Number(I)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings/SimStatePreference;->rawNumber1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    :goto_0
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 489
    const-string v10, "SimStatePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mast SIM mode is ON rawNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/settings/SimStatePreference;->rawNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , rawNumber1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/settings/SimStatePreference;->rawNumber1:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v10, Lcom/android/settings/SimStatePreference;->rawNumber:Ljava/lang/String;

    sput-object v10, Lcom/android/settings/SimStatePreference;->rawNumber1:Ljava/lang/String;

    .line 491
    const-string v10, "0"

    sput-object v10, Lcom/android/settings/SimStatePreference;->rawNumber:Ljava/lang/String;

    .line 494
    :cond_0
    iget-boolean v10, p0, Lcom/android/settings/SimStatePreference;->sim1_select:Z

    if-eqz v10, :cond_b

    .line 495
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090043

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "formattedNumber1":Ljava/lang/String;
    sget-object v10, Lcom/android/settings/SimStatePreference;->rawNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 498
    sget-object v10, Lcom/android/settings/SimStatePreference;->rawNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    :cond_1
    const-string v10, "gsm.sim.operator.alpha"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 502
    .local v8, "spnValue_1":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    const-string v11, "520 00"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 503
    const-string v10, "True-H/CAT3G"

    iput-object v10, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    .line 514
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->network:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->phoneNum:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "select_name_1"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, "sim1_name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/settings/SimStatePreference;->getSimName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simIcon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/settings/SimStatePreference;->getSimIconLarge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    .end local v2    # "formattedNumber1":Ljava/lang/String;
    .end local v6    # "sim1_name":Ljava/lang/String;
    .end local v8    # "spnValue_1":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimState_1:Ljava/lang/String;

    const-string v11, "ABSENT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/plugin/dsds/PlugInDsdsService;->isSimPinEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 553
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0202f8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    :goto_3
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimState_2:Ljava/lang/String;

    const-string v11, "ABSENT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    :cond_3
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/plugin/dsds/PlugInDsdsService;->isSimPinEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 560
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0202f8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    :goto_4
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v10}, Lcom/android/settings/SimEnabler;->doResume()V

    .line 568
    iget-boolean v10, p0, Lcom/android/settings/SimStatePreference;->isAirMode:Z

    if-nez v10, :cond_7

    .line 569
    const/4 v1, 0x1

    .line 570
    .local v1, "enableChecked":Z
    const/4 v4, 0x1

    .line 571
    .local v4, "isActive":Z
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v10}, Lcom/android/settings/SimEnabler;->isOneSimOff()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 572
    const/4 v1, 0x0

    .line 573
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v10}, Lcom/android/settings/SimEnabler;->notifyActiveSim()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/settings/SimStatePreference;->setDataNetwork(I)V

    .line 577
    :cond_4
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->activateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 578
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mPagingPreference:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/settings/SimStatePreference;->checkBPMDisableCase(Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 579
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/settings/SimStatePreference;->checkDataPreferedDisableCase(Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 580
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mDualSimAlwaysOn:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/settings/SimStatePreference;->checkDataPreferedDisableCase(Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 583
    :cond_5
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimEnabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v10}, Lcom/android/settings/SimEnabler;->isSimOn()Z

    move-result v10

    if-nez v10, :cond_6

    .line 584
    const/4 v4, 0x0

    .line 586
    :cond_6
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 587
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 589
    iget-boolean v10, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    if-eqz v10, :cond_7

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/SimStatePreference;->notifyHierarchyChanged()V

    .line 591
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/SimStatePreference;->reorder:Z

    .line 594
    .end local v1    # "enableChecked":Z
    .end local v4    # "isActive":Z
    :cond_7
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 483
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "formattedNumber1":Ljava/lang/String;
    .restart local v8    # "spnValue_1":Ljava/lang/String;
    :cond_8
    const-string v10, "INU"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "INS"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 505
    :cond_9
    const-string v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 506
    const-string v10, "SimStatePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "spnValue_1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput-object v8, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    goto/16 :goto_1

    .line 509
    :cond_a
    const-string v10, ""

    iget-object v11, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 510
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0905e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SimStatePreference;->plmmValue_1:Ljava/lang/String;

    goto/16 :goto_1

    .line 522
    .end local v2    # "formattedNumber1":Ljava/lang/String;
    .end local v8    # "spnValue_1":Ljava/lang/String;
    :cond_b
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090043

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "formattedNumber2":Ljava/lang/String;
    sget-object v10, Lcom/android/settings/SimStatePreference;->rawNumber1:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 525
    sget-object v10, Lcom/android/settings/SimStatePreference;->rawNumber1:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    :cond_c
    const-string v10, "gsm.sim.operator.alpha_1"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 528
    .local v9, "spnValue_2":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->mSimMode:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 529
    const-string v10, "persist.radio.plmnname_1"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 531
    :cond_d
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    const-string v11, "520 00"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 532
    const-string v10, "True-H/CAT3G"

    iput-object v10, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    .line 542
    :cond_e
    :goto_5
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->network:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->phoneNum:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "select_name_2"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "sim2_name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simName:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/settings/SimStatePreference;->getSimName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simIcon:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/settings/SimStatePreference;->getSimIconLarge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 533
    .end local v7    # "sim2_name":Ljava/lang/String;
    :cond_f
    const-string v10, "INU"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "INS"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 534
    :cond_10
    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 535
    const-string v10, "SimStatePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "spnValue_2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-object v9, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    goto :goto_5

    .line 539
    :cond_11
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0905e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SimStatePreference;->plmmValue_2:Ljava/lang/String;

    goto :goto_5

    .line 556
    .end local v3    # "formattedNumber2":Ljava/lang/String;
    .end local v9    # "spnValue_2":Ljava/lang/String;
    :cond_12
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simLockIcon1:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 563
    :cond_13
    iget-object v10, p0, Lcom/android/settings/SimStatePreference;->simLockIcon2:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4
.end method
