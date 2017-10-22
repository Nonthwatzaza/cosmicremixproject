.class public Lcom/android/systemui/statusbar/policy/NetworkController_dual;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController_dual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController_dual$1;,
        Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;,
        Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;
    }
.end annotation


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field static final CHATTY:Z = true

.field static final DEBUG:Z = true

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final NB_SIM:I = 0x2

.field public static final PlmnSimIconImage:[I

.field public static final QuickpanelSimImage:[I

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field private static final SIM_0:I = 0x0

.field private static final SIM_1:I = 0x1

.field public static final SimIconImage:[I

.field static final TAG:Ljava/lang/String; = "NetworkController_dual"

.field static final TW_TAG:Ljava/lang/String; = "NetworkController_dual"


# instance fields
.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothTetherDisconnected:Z

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCurrentSimSlot:I

.field mDataAndWifiStacked:Z

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataTypeBrand:Ljava/lang/String;

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayRoamingIcon:Z

.field private mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

.field public mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field private mLastBluetoothTethered:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastSimIconId:I

.field mLastSimIconVisible:Z

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field mMaxLevelOfSignalStrengthIndicator:I

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mMobileLabelViews2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mOperator:Ljava/lang/String;

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field private mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

.field private mSim1Icon:I

.field private mSim1Name:Ljava/lang/String;

.field private mSim2Icon:I

.field private mSim2Name:Ljava/lang/String;

.field mSimIconId:I

.field mSimIconVisible:Z

.field mSingleMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 207
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->QuickpanelSimImage:[I

    .line 215
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->SimIconImage:[I

    .line 223
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->PlmnSimIconImage:[I

    return-void

    .line 207
    nop

    :array_0
    .array-data 4
        0x7f02007d
        0x7f02007e
        0x7f02007b
        0x7f02007c
        0x7f02007a
    .end array-data

    .line 215
    :array_1
    .array-data 4
        0x7f0200ac
        0x7f0200ad
        0x7f0200af
        0x7f0200b0
        0x7f0200ae
    .end array-data

    .line 223
    :array_2
    .array-data 4
        0x7f020098
        0x7f02009c
        0x7f02009a
        0x7f02009b
        0x7f020099
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expandedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 1862
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 114
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowPhoneRSSIForData:Z

    .line 115
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    .line 116
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAlwaysShowCdmaRssi:Z

    .line 125
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    .line 126
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    .line 127
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivity:I

    .line 130
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    .line 131
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherDisconnected:Z

    .line 132
    const v4, 0x7f020144

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    .line 135
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastBluetoothTethered:Z

    .line 138
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSupported:Z

    .line 139
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z

    .line 140
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    .line 141
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIdle:Z

    .line 142
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    .line 143
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSignal:I

    .line 144
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxState:I

    .line 145
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxExtraState:I

    .line 149
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I

    .line 152
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnected:Z

    .line 153
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkType:I

    .line 158
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    .line 159
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDisplayRoamingIcon:Z

    .line 166
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconViews:Ljava/util/ArrayList;

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews2:Ljava/util/ArrayList;

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSingleMobileLabelViews:Ljava/util/ArrayList;

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSignalClusters:Ljava/util/ArrayList;

    .line 180
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    .line 181
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    .line 182
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWimaxIconId:I

    .line 183
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedSignalIconId:I

    .line 184
    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedLabel:Ljava/lang/String;

    .line 186
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataAndWifiStacked:Z

    .line 195
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCurrentSimSlot:I

    .line 196
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    .line 197
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastSimIconId:I

    .line 198
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    .line 199
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastSimIconVisible:Z

    .line 270
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aput-object v8, v4, v6

    aput-object v8, v4, v7

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .line 1863
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    .line 1865
    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .end local p2    # "expandedView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1867
    const-string v4, "DSDS"

    invoke-static {v4}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/plugin/dsds/PlugInDsdsService;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    .line 1868
    const-string v4, "phone_msim"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/MSimTelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 1870
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    invoke-direct {v5, p0, p1, v6}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController_dual;Landroid/content/Context;I)V

    aput-object v5, v4, v6

    .line 1871
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    invoke-direct {v5, p0, p1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController_dual;Landroid/content/Context;I)V

    aput-object v5, v4, v7

    .line 1873
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    .line 1875
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHspaDataDistinguishable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1879
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f090004

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowPhoneRSSIForData:Z

    .line 1880
    const v4, 0x7f090005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    .line 1881
    const v4, 0x1110034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAlwaysShowCdmaRssi:Z

    .line 1885
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWifiIcons()V

    .line 1886
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWimaxIcons()V

    .line 1889
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1890
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)V

    .line 1891
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1892
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 1893
    .local v3, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v3, :cond_0

    .line 1894
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 1899
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1900
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1901
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1902
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1903
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1904
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1905
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1906
    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1907
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1908
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1910
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1913
    const-string v4, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1915
    const-string v4, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1916
    const-string v4, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1918
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSupported:Z

    .line 1920
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSupported:Z

    if-eqz v4, :cond_1

    .line 1921
    const-string v4, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1922
    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1923
    const-string v4, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1926
    :cond_1
    const-string v4, "android.settings.SIMCARD_MGT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1927
    const-string v4, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1931
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateAirplaneMode()V

    .line 1934
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1937
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateStatusBarNetworkSettings()V

    .line 1939
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->initDualSimUiValue()V

    .line 1941
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon()V

    .line 1942
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getCurrentSimSlot()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateNoSIMNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    return-object v0
.end method

.method private getCurrentSimSlot()I
    .locals 1

    .prologue
    .line 3412
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCurrentSimSlot:I

    return v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 3251
    if-eqz p1, :cond_0

    .line 3252
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3254
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3259
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 3255
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3256
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 3259
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private getSimActive(I)I
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    const/4 v3, 0x1

    .line 3401
    if-nez p1, :cond_0

    .line 3402
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3408
    .local v0, "value":I
    :goto_0
    return v0

    .line 3405
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private getSimIconIndex(I)I
    .locals 1
    .param p1, "simIndex"    # I

    .prologue
    .line 3513
    if-nez p1, :cond_0

    .line 3514
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim1Icon:I

    .line 3516
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim2Icon:I

    goto :goto_0
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1855
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v0

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2064
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2065
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2075
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2069
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2070
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2071
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2072
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 2075
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initDualSimUiValue()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3470
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setSimIconIndex(II)V

    .line 3471
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setSimIconIndex(II)V

    .line 3473
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_name_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setSimName(Ljava/lang/String;I)V

    .line 3474
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_name_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setSimName(Ljava/lang/String;I)V

    .line 3476
    const-string v5, "persist.radio.calldefault.simid"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3478
    .local v4, "systemSimId":I
    const-string v5, "NetworkController_dual"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initDualSimUiValue() systemSimId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlot(I)V

    .line 3481
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0103

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3482
    .local v2, "quickpanelSim1Icon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0107

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3488
    .local v3, "quickpanelSim2Icon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0104

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3489
    .local v0, "quickPanelSim1Name":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0108

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3491
    .local v1, "quickPanelSim2Name":Landroid/widget/TextView;
    sget-object v5, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->QuickpanelSimImage:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim1Icon:I

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3492
    sget-object v5, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->QuickpanelSimImage:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim2Icon:I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3496
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim1Name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 3497
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim1Name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3499
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim2Name:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 3500
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim2Name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3502
    :cond_1
    return-void
.end method

.method private isNoSIM()Z
    .locals 5

    .prologue
    .line 3605
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3606
    .local v0, "SimState":Ljava/lang/String;
    const-string v2, "ril.ICC_TYPE_1"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3607
    .local v1, "SimState2":Ljava/lang/String;
    const-string v2, "NetworkController_dual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNoSim : SimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SimState2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3609
    const/4 v2, 0x1

    .line 3611
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCurrentSimSlotIcon()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfSim()I

    move-result v1

    .line 3421
    .local v1, "numberOfSim":I
    const/4 v2, -0x1

    .line 3423
    .local v2, "simIconIndex":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->isFlightModePossible()Z

    move-result v0

    .line 3425
    .local v0, "flightModePossible":Z
    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 3426
    :cond_0
    const-string v6, "NetworkController_dual"

    const-string v7, "setCurrentSimSlotIcon setIcon: invisible"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    .line 3428
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    .line 3467
    :cond_1
    :goto_0
    return-void

    .line 3430
    :cond_2
    if-ne v1, v9, :cond_7

    .line 3431
    const-string v6, "ril.ICC_TYPE"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3432
    .local v4, "simState_1":Ljava/lang/String;
    const-string v6, "ril.ICC_TYPE_1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3433
    .local v5, "simState_2":Ljava/lang/String;
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3435
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3436
    const-string v6, "NetworkController_dual"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCurrentSimSlotIcon : Mast SIM mode is ON simState_1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState_2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    move-object v5, v4

    .line 3438
    const-string v4, "0"

    .line 3441
    :cond_3
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3442
    :cond_4
    const-string v6, "NetworkController_dual"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCurrentSimSlotIcon : SimState_2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimIconIndex(I)I

    move-result v2

    .line 3444
    sget-object v6, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->SimIconImage:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    .line 3445
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    goto :goto_0

    .line 3447
    :cond_5
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3448
    :cond_6
    const-string v6, "NetworkController_dual"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCurrentSimSlotIcon : SimState_1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimIconIndex(I)I

    move-result v2

    .line 3450
    sget-object v6, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->SimIconImage:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    .line 3451
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    goto/16 :goto_0

    .line 3454
    .end local v3    # "simMode":Ljava/lang/String;
    .end local v4    # "simState_1":Ljava/lang/String;
    .end local v5    # "simState_2":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 3455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getCurrentSimSlot()I

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I

    move-result v6

    if-eqz v6, :cond_8

    .line 3456
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimIconIndex(I)I

    move-result v2

    .line 3457
    sget-object v6, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->SimIconImage:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    .line 3458
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    .line 3464
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v6, v6, v10

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 3465
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v6, v6, v9

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    goto/16 :goto_0

    .line 3460
    :cond_8
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimIconIndex(I)I

    move-result v2

    .line 3461
    sget-object v6, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->SimIconImage:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    .line 3462
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    goto :goto_1
.end method

.method private setCurrentSimSlotIcon(I)V
    .locals 1
    .param p1, "simIconIndex"    # I

    .prologue
    .line 3575
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->SimIconImage:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    .line 3576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    .line 3577
    return-void
.end method

.method private setQuickPanelDualPlmnVisible()V
    .locals 0

    .prologue
    .line 3397
    return-void
.end method

.method private setSimIconIndex(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "simIndex"    # I

    .prologue
    .line 3505
    if-nez p2, :cond_1

    .line 3506
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim1Icon:I

    .line 3510
    :cond_0
    :goto_0
    return-void

    .line 3507
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3508
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim2Icon:I

    goto :goto_0
.end method

.method private setSimName(Ljava/lang/String;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "simIndex"    # I

    .prologue
    .line 3521
    if-nez p2, :cond_1

    .line 3522
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim1Name:Ljava/lang/String;

    .line 3526
    :cond_0
    :goto_0
    return-void

    .line 3523
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3524
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim2Name:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1849
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    .line 1851
    const-string v0, "NetworkController_dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode - mAirplaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    return-void

    :cond_0
    move v0, v1

    .line 1849
    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2133
    const-string v4, "NetworkController_dual"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateConnectivity: intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2138
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 2141
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnected:Z

    .line 2142
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnected:Z

    if-eqz v4, :cond_5

    .line 2143
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkType:I

    .line 2144
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2150
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2153
    .local v1, "connectionStatus":I
    const-string v4, "NetworkController_dual"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateConnectivity: networkInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const-string v4, "NetworkController_dual"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateConnectivity: connectionStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-nez v4, :cond_0

    .line 2159
    const/16 v4, 0x32

    if-le v1, v4, :cond_6

    move v4, v5

    :goto_2
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I

    .line 2163
    :cond_0
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v7, 0x7

    if-ne v4, v7, :cond_7

    .line 2164
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    .line 2167
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    if-nez v4, :cond_1

    .line 2168
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherDisconnected:Z

    .line 2179
    :cond_1
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v9, :cond_9

    .line 2181
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    if-ne v9, v4, :cond_2

    .line 2182
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getUpdateDataNetType()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 2183
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataIcon()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 2185
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_3

    .line 2186
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 2179
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v1    # "connectionStatus":I
    .end local v2    # "i":I
    :cond_4
    move v4, v6

    .line 2141
    goto/16 :goto_0

    .line 2146
    :cond_5
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkType:I

    .line 2147
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto/16 :goto_1

    .restart local v1    # "connectionStatus":I
    :cond_6
    move v4, v6

    .line 2159
    goto :goto_2

    .line 2170
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    if-eqz v4, :cond_8

    .line 2171
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherDisconnected:Z

    .line 2173
    :cond_8
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    goto :goto_3

    .line 2189
    .restart local v2    # "i":I
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWifiIcons()V

    .line 2190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWimaxIcons()V

    .line 2191
    return-void
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "simIndex"    # I
    .param p2, "imageIndex"    # Ljava/lang/String;
    .param p3, "simName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 3529
    const/4 v3, 0x0

    .line 3530
    .local v3, "quickpanelSimIcon":Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 3531
    .local v0, "carrierLabelIcon":Landroid/widget/ImageView;
    const/4 v2, 0x0

    .line 3534
    .local v2, "quickPanelSimName":Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 3535
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3536
    .local v1, "iconIndex":I
    const-string v5, "ril.MSIMM"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3537
    .local v4, "simMode":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p1, :cond_5

    .line 3538
    invoke-direct {p0, v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setSimIconIndex(II)V

    .line 3542
    :goto_0
    if-nez p1, :cond_6

    .line 3543
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0103

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "quickpanelSimIcon":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 3550
    .restart local v3    # "quickpanelSimIcon":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getCurrentSimSlot()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 3551
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon(I)V

    .line 3555
    :cond_1
    if-eqz v3, :cond_2

    .line 3556
    sget-object v5, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->QuickpanelSimImage:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3561
    .end local v1    # "iconIndex":I
    .end local v4    # "simMode":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_4

    .line 3562
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setSimName(Ljava/lang/String;I)V

    .line 3563
    if-nez p1, :cond_7

    .line 3564
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0104

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "quickPanelSimName":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 3568
    .restart local v2    # "quickPanelSimName":Landroid/widget/TextView;
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 3569
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3572
    :cond_4
    return-void

    .line 3540
    .restart local v1    # "iconIndex":I
    .restart local v4    # "simMode":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setSimIconIndex(II)V

    goto :goto_0

    .line 3545
    :cond_6
    if-ne p1, v7, :cond_0

    .line 3546
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0107

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "quickpanelSimIcon":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .restart local v3    # "quickpanelSimIcon":Landroid/widget/ImageView;
    goto :goto_1

    .line 3565
    .end local v1    # "iconIndex":I
    .end local v4    # "simMode":Ljava/lang/String;
    :cond_7
    if-ne p1, v7, :cond_3

    .line 3566
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d0108

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "quickPanelSimName":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "quickPanelSimName":Landroid/widget/TextView;
    goto :goto_2
.end method

.method private updateNoSIMNotification()V
    .locals 8

    .prologue
    const/16 v7, 0x111

    .line 3265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->isNoSIM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3266
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3267
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0110

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3268
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f0a0111

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3270
    .local v2, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f02011f

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3278
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3285
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 3282
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 3

    .prologue
    .line 1948
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mOperator:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1963
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataTypeBrand:Ljava/lang/String;

    .line 1966
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_0

    .line 1968
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDisplayRoamingIcon:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1975
    :cond_0
    :goto_2
    return-void

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    goto :goto_0

    .line 1959
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 1960
    .restart local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "open"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mOperator:Ljava/lang/String;

    goto :goto_1

    .line 1970
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 1971
    .restart local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDisplayRoamingIcon:Z

    goto :goto_2
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2049
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 2050
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    .line 2061
    :goto_0
    return-void

    .line 2054
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_1

    .line 2055
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    .line 2059
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 2057
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiEnabled:Z

    if-eqz v1, :cond_2

    const v0, 0x7f02015c

    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    goto :goto_1
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v7, -0xc8

    const/4 v5, 0x0

    .line 2007
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2008
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2009
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiEnabled:Z

    .line 2045
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWifiIcons()V

    .line 2046
    return-void

    :cond_1
    move v4, v5

    .line 2009
    goto :goto_0

    .line 2012
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2013
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 2015
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    .line 2016
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    .line 2018
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    .line 2020
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 2021
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 2022
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2024
    :cond_3
    if-eqz v1, :cond_6

    .line 2025
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    .line 2035
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    :goto_3
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLevel:I

    .line 2036
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiRssi:I

    goto :goto_1

    :cond_5
    move v4, v5

    .line 2016
    goto :goto_2

    .line 2027
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 2029
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    if-nez v4, :cond_4

    .line 2030
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 2037
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wasConnected":Z
    :cond_8
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2038
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    if-eqz v4, :cond_0

    .line 2039
    const-string v4, "newRssi"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiRssi:I

    .line 2040
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 2111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 2112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 2113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 2114
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    .line 2117
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWimax:Ljava/lang/String;

    .line 2126
    :goto_1
    return-void

    .line 2116
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    goto :goto_0

    .line 2120
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    .line 2121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 2124
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2081
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    .line 2083
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2084
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2086
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z

    .line 2107
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWimaxIcons()V

    .line 2108
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 2086
    goto :goto_0

    .line 2088
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2089
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSignal:I

    goto :goto_1

    .line 2090
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2091
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxState:I

    .line 2093
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxExtraState:I

    .line 2096
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    .line 2098
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 2096
    goto :goto_2

    :cond_5
    move v3, v4

    .line 2098
    goto :goto_3
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1578
    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    return-void
.end method

.method public addCombinedSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    return-void
.end method

.method public addDataDirectionIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    return-void
.end method

.method public addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "id"    # I

    .prologue
    .line 1613
    if-nez p2, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    :goto_0
    return-void

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;)V

    .line 1631
    return-void
.end method

.method public addSingleMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSingleMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    return-void
.end method

.method public addWimaxIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3067
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnected:Z

    if-eqz v0, :cond_2

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3073
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3074
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3075
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3076
    const-string v0, "  mDataConnected1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3077
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3078
    const-string v0, "  mDataConnected2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3080
    const-string v0, "  mSimState1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3081
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3082
    const-string v0, "  mSimState2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3083
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3084
    const-string v0, "  mPhoneState1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3085
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3086
    const-string v0, "  mPhoneState2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3087
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3088
    const-string v0, "  mDataState1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3089
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3090
    const-string v0, "  mDataState2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3091
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3092
    const-string v0, "  mDataActivity1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3093
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3094
    const-string v0, "  mDataActivity2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3095
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3096
    const-string v0, "  mDataNetType1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3097
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3098
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3099
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    const-string v0, "  mDataNetType2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3102
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    const-string v0, "  mServiceState1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3106
    const-string v0, "  mServiceState2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3108
    const-string v0, "  mSignalStrength1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3110
    const-string v0, "  mSignalStrength2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3112
    const-string v0, "  mLastSignalLevel1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3114
    const-string v0, "  mLastSignalLevel2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3116
    const-string v0, "  mNetworkName1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    const-string v0, "  mNetworkNameDefault1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-string v0, "  mNetworkNameSeparator1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const-string v0, "  mNetworkName2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    const-string v0, "  mNetworkNameDefault2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string v0, "  mNetworkNameSeparator2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    const-string v0, "  mPhoneSignalIconId1=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3130
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3131
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    const-string v0, "  mPhoneSignalIconId2=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    const-string v0, "  mDataDirectionIconId1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3138
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    const-string v0, "  mDataDirectionIconId2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3142
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    const-string v0, "  mDataSignalIconId1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3146
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    const-string v0, "  mDataSignalIconId2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3150
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    const-string v0, "  mDataTypeIconId1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3154
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const-string v0, "  mDataTypeIconId2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3158
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 3163
    const-string v0, "  mRoamingIconId1="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3165
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    const-string v0, "  mRoamingIconId2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3169
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    :cond_0
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3177
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3178
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3179
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3180
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3181
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3182
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3183
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3188
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSupported:Z

    if-eqz v0, :cond_1

    .line 3191
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3193
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3194
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3195
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3197
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3198
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    :cond_1
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3206
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3208
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3210
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3211
    const-string v0, "  mLastPhoneSignalIconId1=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3213
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    const-string v0, "  mLastPhoneSignalIconId2=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3217
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    const-string v0, "  mLastDataDirectionIconId1=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3221
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    const-string v0, "  mLastDataDirectionIconId2=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3225
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3228
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3229
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3230
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3232
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3233
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3234
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3236
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3237
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3238
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    const-string v0, "  mLastDataTypeIconId1=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3241
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3242
    const-string v0, "  mLastDataTypeIconId2=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3244
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3245
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3247
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    return-void

    .line 3068
    :cond_2
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getNumberOfActiveSim()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3615
    new-array v3, v8, [Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v4, v3, v7

    .line 3616
    .local v3, "systemSimState":[Ljava/lang/String;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 3617
    .local v2, "simActive":[I
    const/4 v1, 0x0

    .line 3618
    .local v1, "numberOfSim":I
    const-string v4, "ril.ICC_TYPE"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 3619
    const-string v4, "ril.ICC_TYPE_1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 3620
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v6

    .line 3621
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v7

    .line 3628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 3629
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNumberOfActiveSim() SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":systemSimState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simActive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    aget-object v4, v3, v0

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3632
    aget v4, v2, v0

    if-ne v4, v7, :cond_0

    .line 3633
    add-int/lit8 v1, v1, 0x1

    .line 3628
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3638
    :cond_1
    return v1

    .line 3616
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getNumberOfSim()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3580
    new-array v3, v8, [Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v4, v3, v6

    .line 3581
    .local v3, "systemSimState":[Ljava/lang/String;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 3582
    .local v2, "simActive":[I
    const/4 v1, 0x0

    .line 3583
    .local v1, "numberOfSim":I
    const-string v4, "ril.ICC_TYPE"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 3584
    const-string v4, "ril.ICC_TYPE_1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 3585
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v7

    .line 3586
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v6

    .line 3593
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 3594
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNumberOfSim() SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":systemSimState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simActive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    aget-object v4, v3, v0

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3598
    add-int/lit8 v1, v1, 0x1

    .line 3593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3602
    :cond_1
    return v1

    .line 3581
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hasMobileDataFeature(I)Z
    .locals 1
    .param p1, "simID"    # I

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, p1

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v0

    return v0
.end method

.method public isFlightModePossible()Z
    .locals 5

    .prologue
    .line 3642
    const/4 v0, 0x0

    .line 3643
    .local v0, "flightModePossible":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    if-eqz v2, :cond_2

    .line 3644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 3646
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3648
    :cond_0
    const/4 v0, 0x1

    .line 3644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3650
    :cond_1
    const/4 v0, 0x0

    .line 3651
    const-string v2, "NetworkController_dual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flightModePossible=false : mSim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":mServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simHasService()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isEmergencyOnly()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1721
    .local v8, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1724
    :cond_0
    const-string v1, "NetworkController_dual"

    const-string v2, "onReceive() - RSSI_CHANGED_ACTION, WIFI_STATE, NETWORK_STATE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWifiState(Landroid/content/Intent;)V

    .line 1726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViewsforwifi()V

    .line 1846
    :cond_1
    :goto_0
    return-void

    .line 1727
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1728
    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1729
    .local v10, "simCardId":I
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - ACTION_SIM_STATE_CHANGED, simCardId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    move-object/from16 v0, p2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;Landroid/content/Intent;)V

    .line 1731
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateDefaultSimForVoiceCalls()V

    .line 1733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon()V

    .line 1734
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setQuickPanelDualSimVisible()V

    .line 1735
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setQuickPanelDualPlmnVisible()V

    .line 1736
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto :goto_0

    .line 1737
    .end local v10    # "simCardId":I
    :cond_3
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1739
    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1740
    .restart local v10    # "simCardId":I
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - SPN_STRINGS_UPDATED_ACTION, simCardId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    const-string v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "showPlmn"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1748
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    const-string v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "showPlmn"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1754
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1755
    .end local v10    # "simCardId":I
    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1757
    :cond_5
    const-string v1, "NetworkController_dual"

    const-string v2, "onReceive() - CONNECTIVITY_ACTION, INET_CONDITION_ACTION"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateConnectivity(Landroid/content/Intent;)V

    .line 1759
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1760
    :cond_6
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1761
    const-string v1, "NetworkController_dual"

    const-string v2, "onReceive() - ACTION_CONFIGURATION_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1763
    :cond_7
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1764
    const-string v1, "NetworkController_dual"

    const-string v2, "onReceive() - ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateAirplaneMode()V

    .line 1766
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 1767
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon()V

    .line 1768
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1769
    :cond_8
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1772
    :cond_9
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateWimaxState(Landroid/content/Intent;)V

    .line 1773
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1774
    :cond_a
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1776
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateNoSIMNotification()V

    .line 1779
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v9, v1, :cond_1

    .line 1780
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1781
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v4, 0x1040453

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 1779
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1784
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v3, 0x1040453

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_2

    .line 1790
    .end local v9    # "i":I
    :cond_c
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1791
    const-string v1, "simId"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1793
    .restart local v10    # "simCardId":I
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - ACTION_DEFAULT_CS_SIM_CHANGED : simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlot(I)V

    .line 1795
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon()V

    .line 1796
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfSim()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I

    move-result v1

    if-eqz v1, :cond_e

    .line 1797
    if-nez v10, :cond_f

    .line 1798
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1799
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 1801
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 1809
    :cond_e
    :goto_3
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSim[0].mSimFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSim[1].mSimFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1803
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 1804
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1805
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    goto :goto_3

    .line 1812
    .end local v10    # "simCardId":I
    :cond_10
    const-string v1, "android.settings.SIMCARD_MGT"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1813
    const-string v1, "simcard_sim_id"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1814
    .local v12, "simId":I
    const-string v1, "simcard_sim_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1815
    .local v11, "simIconIndex":Ljava/lang/String;
    const-string v1, "simcard_sim_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1816
    .local v13, "simName":Ljava/lang/String;
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - ACTION_SIM_MGT_CHANGED : simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",simIconIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",simName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfSim()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 1818
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1819
    .local v14, "systemSimLocationInfo":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1820
    const/4 v12, 0x0

    .line 1823
    .end local v14    # "systemSimLocationInfo":Ljava/lang/String;
    :cond_11
    invoke-direct {p0, v12, v11, v13}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1825
    .end local v11    # "simIconIndex":Ljava/lang/String;
    .end local v12    # "simId":I
    .end local v13    # "simName":Ljava/lang/String;
    :cond_12
    const-string v1, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1826
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon()V

    .line 1827
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setQuickPanelDualSimVisible()V

    .line 1828
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1831
    :cond_13
    const-string v1, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1832
    const-string v1, "simId"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1833
    .restart local v10    # "simCardId":I
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED : simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPlmn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPlmn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1040478

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1835
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowSpn:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v3, v3, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSpn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowPlmn:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2400(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v5, v5, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPlmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "cbMsgBody"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1836
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0

    .line 1839
    .end local v10    # "simCardId":I
    :cond_15
    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1840
    const-string v1, "simId"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1841
    .restart local v10    # "simCardId":I
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - ACTION_CB_CLEAR : simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v1, v1, v10

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v2, v2, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowSpn:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v3, v3, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSpn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v4, v4, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowPlmn:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2400(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v5, v5, v10

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPlmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;)V
    .locals 13
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 1635
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_2

    .line 1636
    new-array v11, v3, [Ljava/lang/String;

    aput-object v2, v11, v12

    aput-object v2, v11, v1

    .line 1637
    .local v11, "systemSimState":[Ljava/lang/String;
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    .line 1638
    const-string v0, "ril.ICC_TYPE_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v1

    .line 1639
    aget-object v0, v11, v12

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iput v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 1642
    :cond_0
    aget-object v0, v11, v1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iput v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 1645
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setRoamingIcon1(I)V

    .line 1646
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setRoamingIcon2(I)V

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setDataState1(I)V

    .line 1648
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setDataState2(I)V

    .line 1650
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setBtTetherState(Z)V

    .line 1656
    .end local v11    # "systemSimState":[Ljava/lang/String;
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setSimIcon(ZI)V

    .line 1658
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfSim()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 1664
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 1670
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    if-eqz v0, :cond_6

    .line 1672
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setMobileDataIndicators1(ZIIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1680
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setMobileDataIndicators2(ZIIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1710
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->isFlightModePossible()Z

    move-result v10

    .line 1711
    .local v10, "flightModePossible":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    if-eqz v0, :cond_d

    if-eqz v10, :cond_d

    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneIconId:I

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 1712
    return-void

    .line 1672
    .end local v10    # "flightModePossible":Z
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    goto :goto_0

    .line 1680
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    goto :goto_1

    .line 1690
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    if-eqz v0, :cond_9

    :cond_7
    move v3, v1

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    move-object v2, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setMobileDataIndicators1(ZIIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1699
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    if-eqz v0, :cond_b

    :cond_8
    move v3, v1

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    move-object v2, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;->setMobileDataIndicators2(ZIIILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_9
    move v3, v12

    .line 1690
    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v12

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto :goto_5

    :cond_b
    move v3, v12

    .line 1699
    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    aget-object v0, v0, v1

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto :goto_7

    .restart local v10    # "flightModePossible":Z
    :cond_d
    move v1, v12

    .line 1711
    goto/16 :goto_3
.end method

.method refreshViews()V
    .locals 27

    .prologue
    .line 2196
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    .line 2198
    .local v7, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 2199
    .local v6, "combinedSignalIconId":I
    const/4 v4, 0x0

    .line 2200
    .local v4, "combinedActivityIconId":I
    const-string v5, ""

    .line 2201
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v22, ""

    .line 2202
    .local v22, "wifiLabel":Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2206
    .local v16, "mobileLabel":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v12, v0, :cond_7

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 2210
    const-string v23, ""

    aput-object v23, v16, v12

    .line 2206
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2213
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v16, v12

    .line 2215
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetworkName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "index = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 2253
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const v24, 0x7f02013d

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    .line 2262
    :goto_3
    aget-object v5, v16, v12

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_1

    .line 2216
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v16, v12

    .line 2219
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetworkName2:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "index = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2221
    :cond_3
    const-string v23, ""

    aput-object v23, v16, v12

    .line 2222
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetworkName3:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "index = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2226
    :cond_4
    const v23, 0x7f0a00de

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v12

    .line 2227
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetworkName4:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "index = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_1

    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v23, :cond_1

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v16, v12

    .line 2230
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetworkName5:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "index = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2239
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const v24, 0x7f02013b

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    goto/16 :goto_3

    .line 2242
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const v24, 0x7f02013f

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    goto/16 :goto_3

    .line 2245
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const v24, 0x7f02013c

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    goto/16 :goto_3

    .line 2256
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    goto/16 :goto_3

    .line 2269
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    goto/16 :goto_1

    .line 2275
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 2277
    const v23, 0x7f0a00df

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2278
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    .line 2334
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    .line 2335
    move-object/from16 v5, v22

    .line 2336
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2356
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a007b

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2358
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00c7

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2364
    const/4 v12, 0x0

    :goto_6
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v12, v0, :cond_15

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    .line 2364
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2280
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2282
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "xxxxXXXXxxxxXXXX"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivity:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    goto/16 :goto_4

    .line 2320
    :pswitch_3
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_10

    .line 2321
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v23, :cond_f

    .line 2322
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2287
    :pswitch_4
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_a

    .line 2288
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v23, :cond_9

    .line 2289
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2291
    :cond_9
    const v23, 0x7f02013b

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2294
    :cond_a
    const v23, 0x7f02014e

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2298
    :pswitch_5
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_c

    .line 2299
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v23, :cond_b

    .line 2300
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2302
    :cond_b
    const v23, 0x7f02013f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2305
    :cond_c
    const v23, 0x7f020151

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2309
    :pswitch_6
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_e

    .line 2310
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v23, :cond_d

    .line 2311
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2313
    :cond_d
    const v23, 0x7f02013c

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2316
    :cond_e
    const v23, 0x7f02014f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2324
    :cond_f
    const v23, 0x7f02013d

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2327
    :cond_10
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 2340
    :cond_11
    const/4 v15, 0x0

    .line 2342
    .local v15, "mobileDataFeature":Z
    const/4 v12, 0x0

    :goto_7
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v12, v0, :cond_12

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 2344
    const/4 v15, 0x1

    .line 2349
    :cond_12
    if-eqz v15, :cond_14

    .line 2350
    const-string v22, ""

    goto/16 :goto_5

    .line 2342
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 2352
    :cond_14
    const v23, 0x7f0a00de

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    .line 2369
    .end local v15    # "mobileDataFeature":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2370
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "refreshSignalCluster() : mBluetoothTetherIconId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkType:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    const/4 v9, 0x1

    .line 2374
    .local v9, "ethernetConnected":Z
    :goto_8
    if-eqz v9, :cond_17

    .line 2376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2378
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->isFlightModePossible()Z

    move-result v10

    .line 2380
    .local v10, "flightModePossible":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    if-eqz v10, :cond_1e

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00c8

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2385
    const v23, 0x7f02013a

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneIconId:I

    .line 2387
    const/4 v11, 0x0

    .line 2388
    .local v11, "hasMobileDataFeature":Z
    const/4 v12, 0x0

    :goto_9
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v12, v0, :cond_1b

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 2396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 2397
    const-string v23, ""

    aput-object v23, v16, v12

    .line 2388
    :cond_18
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 2373
    .end local v9    # "ethernetConnected":Z
    .end local v10    # "flightModePossible":Z
    .end local v11    # "hasMobileDataFeature":Z
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 2399
    .restart local v9    # "ethernetConnected":Z
    .restart local v10    # "flightModePossible":Z
    .restart local v11    # "hasMobileDataFeature":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 2401
    const-string v22, ""

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2403
    const/4 v11, 0x1

    goto :goto_a

    .line 2407
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    if-nez v11, :cond_1c

    .line 2408
    const v23, 0x7f0a00de

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2409
    move-object/from16 v5, v22

    .line 2544
    .end local v11    # "hasMobileDataFeature":Z
    :cond_1c
    :goto_b
    const-string v24, "NetworkController_dual"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "refreshViews connected={"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3a

    const-string v23, " wifi"

    :goto_c
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aget-object v23, v23, v26

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3b

    const-string v23, " data1"

    :goto_d
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v26, 0x1

    aget-object v23, v23, v26

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3c

    const-string v23, " data2"

    :goto_e
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " } level="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aget-object v23, v23, v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    if-nez v23, :cond_3d

    const-string v23, "??"

    :goto_f
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "|"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v26, 0x1

    aget-object v23, v23, v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    if-nez v23, :cond_3e

    const-string v23, "??"

    :goto_10
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " combinedSignalIconId=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getResourceName(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " combinedActivityIconId=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mAirplaneMode="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataActivity1="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataActivity2="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mPhoneSignalIconId1=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mPhoneSignalIconId2=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mLastPhoneSignalIconId1=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mLastPhoneSignalIconId2=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataDirectionIconId1=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataDirectionIconId2=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataSignalIconId1=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataSignalIconId2=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataTypeIconId1=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mDataTypeIconId2=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mWifiIconId=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWimaxIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataTypeIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataTypeIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastRoamingIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastRoamingIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastSimIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastSimIconVisible:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSimIconVisible:Z

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastBluetoothTethered:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3f

    .line 2591
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;

    .line 2592
    .local v3, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;)V

    goto :goto_11

    .line 2412
    .end local v3    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    .line 2416
    const v23, 0x7f0a00de

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2418
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_20

    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v23, :cond_20

    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v23, :cond_20

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    .line 2421
    .local v18, "serviceState":I
    if-eqz v18, :cond_1f

    const/16 v23, 0x1

    move/from16 v0, v23

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f

    const/16 v23, 0x2

    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 2424
    :cond_1f
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetworkName6:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    .line 2443
    .end local v18    # "serviceState":I
    :cond_20
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_25

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2450
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_27

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2459
    :goto_14
    sget-boolean v23, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_33

    .line 2460
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->hasService()Z

    move-result v23

    if-eqz v23, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    if-nez v23, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    if-nez v23, :cond_29

    .line 2462
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2467
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    goto/16 :goto_b

    .line 2429
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_20

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    .line 2431
    .restart local v18    # "serviceState":I
    if-eqz v18, :cond_24

    const/16 v23, 0x1

    move/from16 v0, v23

    move/from16 v1, v18

    if-eq v0, v1, :cond_24

    const/16 v23, 0x2

    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 2434
    :cond_24
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetworkName7:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_12

    .line 2445
    .end local v18    # "serviceState":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_26

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto/16 :goto_13

    .line 2448
    :cond_26
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    goto/16 :goto_13

    .line 2452
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_28

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_14

    .line 2455
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_14

    .line 2470
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_2b

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v23

    if-eqz v23, :cond_2a

    .line 2473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getCdmaEriIcon()I
    invoke-static/range {v24 .. v24}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2500(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_b

    .line 2475
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_b

    .line 2477
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_2d

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getCdmaEriIcon()I
    invoke-static/range {v24 .. v24}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2500(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_b

    .line 2482
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_b

    .line 2485
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDisplayRoamingIcon:Z

    move/from16 v23, v0

    if-eqz v23, :cond_31

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v23

    if-eqz v23, :cond_2e

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2f

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const v24, 0x7f0200ee

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2496
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_2e

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2500
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    move/from16 v23, v0

    if-eqz v23, :cond_30

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const v24, 0x7f0200ee

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2506
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    goto/16 :goto_b

    .line 2494
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const v24, 0x7f0200ed

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_15

    .line 2504
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const v24, 0x7f0200ed

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto :goto_16

    .line 2511
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_32

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2516
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    goto/16 :goto_b

    .line 2521
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v23

    if-nez v23, :cond_36

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v23

    if-nez v23, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v23

    if-nez v23, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v23

    if-eqz v23, :cond_38

    .line 2525
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_37

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const v24, 0x7f0200ed

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2528
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const v24, 0x7f0200ed

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    goto/16 :goto_b

    .line 2532
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_39

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2535
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    goto/16 :goto_b

    .line 2544
    :cond_3a
    const-string v23, ""

    goto/16 :goto_c

    :cond_3b
    const-string v23, ""

    goto/16 :goto_d

    :cond_3c
    const-string v23, ""

    goto/16 :goto_e

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aget-object v23, v23, v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_f

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    const/16 v26, 0x1

    aget-object v23, v23, v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_10

    .line 2597
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastBluetoothTethered:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_40

    .line 2598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastBluetoothTethered:Z

    .line 2602
    :cond_40
    const/4 v12, 0x0

    :goto_17
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v12, v0, :cond_46

    .line 2605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_41

    .line 2606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2608
    .local v2, "N":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_18
    if-ge v14, v2, :cond_41

    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 2610
    .local v21, "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2608
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 2616
    .end local v2    # "N":I
    .end local v14    # "j":I
    .end local v21    # "v":Landroid/widget/ImageView;
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataDirectionIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_42

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataDirectionIconId:I

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2619
    .restart local v2    # "N":I
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_19
    if-ge v14, v2, :cond_42

    .line 2620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 2621
    .restart local v21    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2619
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    .line 2626
    .end local v2    # "N":I
    .end local v14    # "j":I
    .end local v21    # "v":Landroid/widget/ImageView;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataTypeIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_44

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataTypeIconId:I

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2629
    .restart local v2    # "N":I
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_1a
    if-ge v14, v2, :cond_44

    .line 2630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 2631
    .restart local v21    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v23, v0

    if-nez v23, :cond_43

    .line 2632
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2629
    :goto_1b
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    .line 2634
    :cond_43
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 2641
    .end local v2    # "N":I
    .end local v14    # "j":I
    .end local v21    # "v":Landroid/widget/ImageView;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastRoamingIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_45

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastRoamingIconId:I

    .line 2602
    :cond_45
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_17

    .line 2647
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2648
    .restart local v2    # "N":I
    const/4 v12, 0x0

    :goto_1c
    if-ge v12, v2, :cond_49

    .line 2649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2650
    .local v21, "v":Landroid/widget/TextView;
    const/16 v23, 0x0

    aget-object v23, v16, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2651
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mMobileLabelViews set mobileLabel[SIM_0] ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const-string v23, ""

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfActiveSim()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_48

    .line 2653
    :cond_47
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2648
    :goto_1d
    add-int/lit8 v12, v12, 0x1

    goto :goto_1c

    .line 2655
    :cond_48
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2656
    const-string v23, "NetworkController_dual"

    const-string v24, "mMobileLabelViews VISIBLE"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2659
    .end local v21    # "v":Landroid/widget/TextView;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews2:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2660
    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v2, :cond_4e

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews2:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2663
    .restart local v21    # "v":Landroid/widget/TextView;
    const-string v23, "persist.radio.plmnname_2"

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2664
    .local v17, "plmn_2":Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v23, v16, v23

    const-string v24, "umobile2G"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4a

    const-string v23, "MY CELCOM"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4a

    .line 2666
    const/16 v23, 0x1

    aput-object v17, v16, v23

    .line 2668
    :cond_4a
    const/16 v23, 0x1

    aget-object v23, v16, v23

    const-string v24, "DTAC"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4b

    .line 2670
    const/16 v23, 0x1

    const-string v24, "dtac"

    aput-object v24, v16, v23

    .line 2674
    :cond_4b
    const/16 v23, 0x1

    aget-object v23, v16, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2675
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mMobileLabelViews2 set mobileLabel[SIM_1] ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    const-string v23, ""

    const/16 v24, 0x1

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfActiveSim()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4d

    .line 2677
    :cond_4c
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2660
    :goto_1f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1e

    .line 2679
    :cond_4d
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2680
    const-string v23, "NetworkController_dual"

    const-string v24, "mMobileLabelViews2 VISIBLE"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2684
    .end local v17    # "plmn_2":Ljava/lang/String;
    .end local v21    # "v":Landroid/widget/TextView;
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfActiveSim()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_53

    .line 2686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2687
    const/4 v12, 0x0

    :goto_20
    if-ge v12, v2, :cond_53

    .line 2688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSingleMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2689
    .restart local v21    # "v":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "phone1_on"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 2690
    .local v19, "sim1Active":I
    const-string v23, "ril.MSIMM"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2693
    .local v20, "simMode":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_4f

    const-string v23, "1"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_51

    .line 2694
    :cond_4f
    const/16 v23, 0x0

    aget-object v23, v16, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2695
    const-string v23, "NetworkController_dual"

    const-string v24, "mSingleMobileLabelViews set as slot1`s"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const-string v23, ""

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_50

    .line 2697
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2687
    :goto_21
    add-int/lit8 v12, v12, 0x1

    goto :goto_20

    .line 2699
    :cond_50
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 2703
    :cond_51
    const/16 v23, 0x1

    aget-object v23, v16, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2704
    const-string v23, "NetworkController_dual"

    const-string v24, "mSingleMobileLabelViews set as slot2`s"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    const-string v23, ""

    const/16 v24, 0x1

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_52

    .line 2706
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 2708
    :cond_52
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 2715
    .end local v19    # "sim1Active":I
    .end local v20    # "simMode":Ljava/lang/String;
    .end local v21    # "v":Landroid/widget/TextView;
    :cond_53
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_55

    .line 2716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2718
    const/4 v12, 0x0

    :goto_22
    if-ge v12, v2, :cond_55

    .line 2719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 2720
    .local v21, "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v23, v0

    if-nez v23, :cond_54

    .line 2721
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2718
    :goto_23
    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    .line 2723
    :cond_54
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 2731
    .end local v21    # "v":Landroid/widget/ImageView;
    :cond_55
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWimaxIconId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_57

    .line 2732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWimaxIconId:I

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2734
    const/4 v12, 0x0

    :goto_24
    if-ge v12, v2, :cond_57

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 2736
    .restart local v21    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v23, v0

    if-nez v23, :cond_56

    .line 2737
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2734
    :goto_25
    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    .line 2739
    :cond_56
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2740
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 2746
    .end local v21    # "v":Landroid/widget/ImageView;
    :cond_57
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedSignalIconId:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v6, :cond_58

    .line 2747
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedSignalIconId:I

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2749
    const/4 v12, 0x0

    :goto_26
    if-ge v12, v2, :cond_58

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 2751
    .restart local v21    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2749
    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    .line 2757
    .end local v21    # "v":Landroid/widget/ImageView;
    :cond_58
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v4, :cond_5c

    .line 2759
    const-string v23, "NetworkController_dual"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "changing data overlay icon id to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2763
    const/4 v12, 0x0

    :goto_27
    if-ge v12, v2, :cond_5c

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 2765
    .restart local v21    # "v":Landroid/widget/ImageView;
    if-nez v4, :cond_5a

    .line 2766
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2763
    :cond_59
    :goto_28
    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    .line 2768
    :cond_5a
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2769
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2771
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_29
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v14, v0, :cond_59

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v14

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5b

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v23, v0

    aget-object v23, v23, v14

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 2771
    :cond_5b
    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    .line 2783
    .end local v14    # "j":I
    .end local v21    # "v":Landroid/widget/ImageView;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5d

    .line 2784
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedLabel:Ljava/lang/String;

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2786
    const/4 v12, 0x0

    :goto_2a
    if-ge v12, v2, :cond_5d

    .line 2787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2788
    .local v21, "v":Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2786
    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    .line 2793
    .end local v21    # "v":Landroid/widget/TextView;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2794
    const/4 v12, 0x0

    :goto_2b
    if-ge v12, v2, :cond_5f

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2796
    .restart local v21    # "v":Landroid/widget/TextView;
    const-string v23, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5e

    .line 2797
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2794
    :goto_2c
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .line 2799
    :cond_5e
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2800
    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 2805
    .end local v21    # "v":Landroid/widget/TextView;
    :cond_5f
    const/4 v8, 0x0

    .local v8, "count":I
    :goto_2d
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v8, v0, :cond_60

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 2807
    :cond_60
    return-void

    .line 2237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2284
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method refreshViewsforwifi()V
    .locals 21

    .prologue
    .line 2811
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    .line 2813
    .local v7, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 2814
    .local v6, "combinedSignalIconId":I
    const/4 v4, 0x0

    .line 2815
    .local v4, "combinedActivityIconId":I
    const-string v5, ""

    .line 2816
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v17, ""

    .line 2817
    .local v17, "wifiLabel":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    .line 2820
    .local v15, "mobileLabel":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 2822
    const v18, 0x7f0a00df

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2823
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    .line 2878
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    .line 2879
    move-object/from16 v5, v17

    .line 2880
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2898
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a007b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2900
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    .line 2901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a00c7

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2906
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v11, v0, :cond_d

    .line 2907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 2909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    .line 2906
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2825
    .end local v11    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2827
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "xxxxXXXXxxxxXXXX"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivity:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto/16 :goto_0

    .line 2865
    :pswitch_0
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_8

    .line 2866
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v18, :cond_7

    .line 2867
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2832
    :pswitch_1
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_2

    .line 2833
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v18, :cond_1

    .line 2834
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2836
    :cond_1
    const v18, 0x7f02013b

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2839
    :cond_2
    const v18, 0x7f02014e

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2843
    :pswitch_2
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_4

    .line 2844
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v18, :cond_3

    .line 2845
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2847
    :cond_3
    const v18, 0x7f02013f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2850
    :cond_4
    const v18, 0x7f020151

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2854
    :pswitch_3
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_6

    .line 2855
    sget-boolean v18, Lcom/android/systemui/statusbar/BaseStatusBar;->hideWifiInAndOut:Z

    if-eqz v18, :cond_5

    .line 2856
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2858
    :cond_5
    const v18, 0x7f02013c

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2861
    :cond_6
    const v18, 0x7f02014f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2869
    :cond_7
    const v18, 0x7f02013d

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2872
    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiActivityIconId:I

    goto/16 :goto_0

    .line 2883
    :cond_9
    const/4 v14, 0x0

    .line 2884
    .local v14, "mobileDataFeature":Z
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2886
    const/4 v14, 0x1

    .line 2891
    :cond_a
    if-eqz v14, :cond_c

    .line 2892
    const-string v17, ""

    goto/16 :goto_1

    .line 2884
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2894
    :cond_c
    const v18, 0x7f0a00de

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 2911
    .end local v14    # "mobileDataFeature":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2912
    const-string v18, "NetworkController_dual"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "refreshSignalCluster() : mBluetoothTetherIconId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTetherIconId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    .end local v11    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkType:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    const/4 v8, 0x1

    .line 2916
    .local v8, "ethernetConnected":Z
    :goto_4
    if-eqz v8, :cond_f

    .line 2918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2920
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->isFlightModePossible()Z

    move-result v9

    .line 2922
    .local v9, "flightModePossible":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    if-eqz v9, :cond_14

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a00c8

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2927
    const v18, 0x7f02013a

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAirplaneIconId:I

    .line 2929
    const/4 v10, 0x0

    .line 2930
    .local v10, "hasMobileDataFeature":Z
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v11, v0, :cond_13

    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mMobileActivityIconId:I

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 2938
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 2939
    const-string v18, ""

    aput-object v18, v15, v11

    .line 2930
    :cond_10
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2915
    .end local v8    # "ethernetConnected":Z
    .end local v9    # "flightModePossible":Z
    .end local v10    # "hasMobileDataFeature":Z
    .end local v11    # "i":I
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 2941
    .restart local v8    # "ethernetConnected":Z
    .restart local v9    # "flightModePossible":Z
    .restart local v10    # "hasMobileDataFeature":Z
    .restart local v11    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 2943
    const-string v17, ""

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 2945
    const/4 v10, 0x1

    goto :goto_6

    .line 2949
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    if-nez v10, :cond_14

    .line 2950
    const v18, 0x7f0a00de

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2951
    move-object/from16 v5, v17

    .line 2957
    .end local v10    # "hasMobileDataFeature":Z
    .end local v11    # "i":I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;

    .line 2961
    .local v3, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;)V

    goto :goto_7

    .line 2966
    .end local v3    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastBluetoothTethered:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    .line 2967
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastBluetoothTethered:Z

    .line 2973
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 2974
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWifiIconId:I

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2976
    .local v2, "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    if-ge v11, v2, :cond_18

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 2978
    .local v16, "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v18, v0

    if-nez v18, :cond_17

    .line 2979
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2976
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 2981
    :cond_17
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 2989
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v16    # "v":Landroid/widget/ImageView;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWimaxIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    .line 2990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastWimaxIconId:I

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2992
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_a
    if-ge v11, v2, :cond_1a

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 2994
    .restart local v16    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v18, v0

    if-nez v18, :cond_19

    .line 2995
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2992
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 2997
    :cond_19
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxIconId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 3004
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v16    # "v":Landroid/widget/ImageView;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v6, :cond_1b

    .line 3005
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedSignalIconId:I

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3007
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_c
    if-ge v11, v2, :cond_1b

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 3009
    .restart local v16    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3007
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 3015
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v16    # "v":Landroid/widget/ImageView;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v4, :cond_1f

    .line 3017
    const-string v18, "NetworkController_dual"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changing data overlay icon id to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastDataDirectionOverlayIconId:I

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3021
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_d
    if-ge v11, v2, :cond_1f

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 3023
    .restart local v16    # "v":Landroid/widget/ImageView;
    if-nez v4, :cond_1d

    .line 3024
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3021
    :cond_1c
    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 3026
    :cond_1d
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3027
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3029
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_f
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v13, v0, :cond_1c

    .line 3030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mSim:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 3029
    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 3041
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v16    # "v":Landroid/widget/ImageView;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_20

    .line 3042
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mLastCombinedLabel:Ljava/lang/String;

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3044
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_10
    if-ge v11, v2, :cond_20

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 3046
    .local v16, "v":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3044
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 3051
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v16    # "v":Landroid/widget/TextView;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3052
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_11
    if-ge v11, v2, :cond_22

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 3054
    .restart local v16    # "v":Landroid/widget/TextView;
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 3055
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3052
    :goto_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 3057
    :cond_21
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3058
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 3064
    .end local v16    # "v":Landroid/widget/TextView;
    :cond_22
    return-void

    .line 2829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentSimSlot(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 3416
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mCurrentSimSlot:I

    .line 3417
    return-void
.end method

.method public setQuickPanelDualSimVisible()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 3289
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0d0101

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3291
    .local v1, "dualSimLayout":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3293
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfSim()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3295
    const/4 v2, 0x0

    .line 3317
    .local v2, "isIdle":Z
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 3318
    :cond_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3321
    const-string v4, "NetworkController_dual"

    const-string v5, "setQuickPanelDualSimVisible() one of SIMs inactive.. dualSimLayout GONE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    .end local v2    # "isIdle":Z
    :goto_0
    return-void

    .line 3326
    .restart local v2    # "isIdle":Z
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3329
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0d004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3330
    .local v0, "carrierLabel":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3332
    const-string v4, "NetworkController_dual"

    const-string v5, "setQuickPanelDualSimVisible() two SIMs and isIdle.. dualSimLayout VISIBLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3344
    .end local v0    # "carrierLabel":Landroid/widget/TextView;
    .end local v2    # "isIdle":Z
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3347
    const-string v4, "NetworkController_dual"

    const-string v5, "setQuickPanelDualSimVisible() Only one SIM.. dualSimLayout GONE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStackedMode(Z)V
    .locals 1
    .param p1, "stacked"    # Z

    .prologue
    .line 1715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataAndWifiStacked:Z

    .line 1716
    return-void
.end method

.method public updateDefaultSimForVoiceCalls()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3660
    const-string v4, "DSDS"

    invoke-static {v4}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/plugin/dsds/PlugInDsdsService;

    .line 3661
    .local v1, "dsdsService":Landroid/plugin/dsds/PlugInDsdsService;
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultSimForVoiceCalls dsdsService=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    if-eqz v1, :cond_0

    .line 3663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfSim()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3664
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3665
    .local v2, "simActive1":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3666
    .local v3, "simActive2":I
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultSimForVoiceCalls simActive1=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simActive2 =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    if-nez v2, :cond_0

    if-ne v3, v7, :cond_0

    .line 3668
    invoke-virtual {v1}, Landroid/plugin/dsds/PlugInDsdsService;->getDefaultSimForVoiceCalls()I

    move-result v0

    .line 3669
    .local v0, "currSimId":I
    invoke-virtual {v1, v7}, Landroid/plugin/dsds/PlugInDsdsService;->setDefaultSimForVoiceCalls(I)I

    .line 3673
    .end local v0    # "currSimId":I
    .end local v2    # "simActive1":I
    .end local v3    # "simActive2":I
    :cond_0
    return-void
.end method
