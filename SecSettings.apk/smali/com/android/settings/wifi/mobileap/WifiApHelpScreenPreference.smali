.class public Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHelpScreenPreference.java"


# instance fields
.field private mMaxClient:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v0, "5"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    .line 40
    const v0, 0x7f040127

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    const v2, 0x7f0b037c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "tetherImg":Landroid/widget/ImageView;
    const v2, 0x7f0b0109

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, "tv":Landroid/widget/TextView;
    const v2, 0x7f020331

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090319

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09031d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09031a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setMaxClient(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->notifyHierarchyChanged()V

    .line 75
    return-void
.end method
