.class synthetic Lcom/android/systemui/statusbar/policy/NetworkController_dual$1;
.super Ljava/lang/Object;
.source "NetworkController_dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController_dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$statusbar$policy$NetworkController_dual$Operator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 850
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->values()[Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$1;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController_dual$Operator:[I

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$1;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController_dual$Operator:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
