.class Lcom/android/systemui/sapps/SAppsPanelUI$4;
.super Landroid/telephony/PhoneStateListener;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$4;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 242
    # getter for: Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "SAppsPanelUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener.onCallStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI$4;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    # setter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I
    invoke-static {v0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$602(Lcom/android/systemui/sapps/SAppsPanelUI;I)I

    .line 245
    return-void
.end method
