.class public final enum Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;
.super Ljava/lang/Enum;
.source "NetworkController_dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController_dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum ATT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum BMC:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum CMCC:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum CU:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum JPN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum KT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum LGT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum OPEN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum SKT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum SPR:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum TLS:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum TMO:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

.field public static final enum VZW:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "ATT"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 240
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "TMO"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 241
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "VZW"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 242
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "SPR"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 243
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "BMC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 244
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "TLS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 245
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "SKT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 246
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "KT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 247
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "LGT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "CMCC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 249
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "CU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 250
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    const-string v1, "JPN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->JPN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    .line 237
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->JPN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;
    .locals 2
    .param p0, "Str"    # Ljava/lang/String;

    .prologue
    .line 262
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    return-object v0
.end method


# virtual methods
.method public isKoreanOperator()Z
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNorthAmericanOperator()Z
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
