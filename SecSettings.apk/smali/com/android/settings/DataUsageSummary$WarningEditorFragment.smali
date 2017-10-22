.class public Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2190
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 2194
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2203
    :goto_0
    return-void

    .line 2196
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2197
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3100(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2199
    new-instance v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 2200
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2201
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2202
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 2208
    .local v8, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/DataUsageSummary;

    .line 2209
    .local v6, "target":Lcom/android/settings/DataUsageSummary;
    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$3200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v4

    .line 2211
    .local v4, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2212
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2214
    .local v9, "dialogInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040042

    const/4 v2, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 2215
    .local v13, "view":Landroid/view/View;
    const v1, 0x7f0b0087

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 2217
    .local v3, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2218
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v14

    .line 2219
    .local v14, "warningBytes":J
    invoke-virtual {v4, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2222
    .local v10, "limitBytes":J
    const v12, 0x18fff

    .line 2225
    .local v12, "maximum_warning":I
    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "inputType=YearDateTime_edittext"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2226
    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 2227
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2228
    const-wide/16 v1, -0x1

    cmp-long v1, v10, v1

    if-eqz v1, :cond_0

    .line 2229
    const-wide/32 v1, 0x100000

    div-long v1, v10, v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2237
    :goto_0
    const-wide/32 v1, 0x100000

    div-long v1, v14, v1

    long-to-int v0, v1

    move/from16 v16, v0

    .line 2238
    .local v16, "warning_mb":I
    move/from16 v0, v16

    if-le v0, v12, :cond_1

    .line 2239
    invoke-virtual {v3, v12}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2246
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2248
    const v1, 0x7f090850

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2249
    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2251
    const v17, 0x7f09084f

    new-instance v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    move/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2264
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 2232
    .end local v16    # "warning_mb":I
    :cond_0
    invoke-virtual {v3, v12}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 2242
    .restart local v16    # "warning_mb":I
    :cond_1
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1
.end method