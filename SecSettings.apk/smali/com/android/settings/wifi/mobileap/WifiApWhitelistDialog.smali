.class public Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mButtonOk:Landroid/widget/Button;

.field private mDeviceName:Ljava/lang/String;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/LinearLayout;

.field private mEtMacArray:[Landroid/widget/EditText;

.field private mEtMacId:[I

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mMacFilter:Landroid/text/InputFilter;

.field private mTempSsid:Ljava/lang/String;

.field private mTextNoChange:Ljava/lang/Boolean;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field nameWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v1, 0x6

    .line 93
    const v0, 0x7f10002e

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    .line 79
    new-array v0, v1, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    .line 83
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    .line 240
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    .line 95
    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    .line 96
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    return-void

    .line 70
    :array_0
    .array-data 4
        0x7f0b0389
        0x7f0b038a
        0x7f0b038b
        0x7f0b038c
        0x7f0b038d
        0x7f0b038e
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "enabled":Z
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 272
    const/4 v0, 0x1

    .line 278
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v2, :cond_1

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 281
    const/4 v0, 0x0

    .line 287
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    return-void

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 275
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, -0x1

    const v10, 0x7f0902e8

    const v9, 0x7f0b0386

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04012e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    .line 108
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setInverseBackgroundForced(Z)V

    .line 111
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0387

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    .line 112
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0359

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    .line 113
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b038f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    .line 114
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "SalesCode":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 116
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v4, v1

    .line 117
    const-string v3, "CHN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CTC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    aput-object v6, v4, v5

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 124
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    const/16 v4, 0x91

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 125
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;I)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 128
    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v3, :cond_3

    .line 129
    const v3, 0x7f0902e1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 130
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const v4, 0x7f0b0389

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 163
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0905fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09036b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    .line 172
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    .line 173
    return-void

    .line 134
    :cond_3
    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v3, v8, :cond_4

    .line 135
    const v3, 0x7f0902e1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 140
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 141
    const v3, 0x7f0902e6

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0385

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 148
    .local v2, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0388

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b038f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 151
    .end local v2    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_5
    const v3, 0x7f09025f

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 158
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 159
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2
.end method

.method public show()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 180
    :cond_0
    return-void
.end method
