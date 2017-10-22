.class public Lcom/android/settings/Utils$ApInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 970
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 971
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 972
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/settings/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 973
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;

    .prologue
    .line 975
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p1, p0, Lcom/android/settings/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 977
    iput-object p2, p0, Lcom/android/settings/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 978
    return-void
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/settings/Utils$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/settings/Utils$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
