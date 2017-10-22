.class public Lcom/android/systemui/statusbar/SignalClusterView_dual;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView_dual.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController_dual$SignalCluster;


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SignalClusterView_dual"


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field private mIsAirplaneMode:Z

.field mMobile1:Landroid/widget/ImageView;

.field mMobile2:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId1:I

.field private mMobileActivityId2:I

.field private mMobileDataState:I

.field private mMobileDataState2:I

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileDescription2:Ljava/lang/String;

.field mMobileFocus1:Landroid/widget/ImageView;

.field mMobileFocus2:Landroid/widget/ImageView;

.field mMobileGroup1:Landroid/view/ViewGroup;

.field mMobileGroup2:Landroid/view/ViewGroup;

.field mMobileRoaming:Landroid/widget/ImageView;

.field mMobileRoaming2:Landroid/widget/ImageView;

.field private mMobileRoamingId:I

.field private mMobileRoamingId2:I

.field private mMobileStrengthId1:I

.field private mMobileStrengthId2:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeDescription2:Ljava/lang/String;

.field private mMobileTypeId1:I

.field private mMobileTypeId2:I

.field private mMobileVisible:Z

.field private mMobileVisible2:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field mSimFocus1:Z

.field mSimFocus2:Z

.field mSimIcon:Landroid/widget/ImageView;

.field private mSimIconId:I

.field private mSimIconVisible:Z

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView_dual;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView_dual;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiVisible:Z

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiActivityId:I

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible2:Z

    .line 52
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileStrengthId1:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId1:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId1:I

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileStrengthId2:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId2:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId2:I

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplaneIconId:I

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimFocus1:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimFocus2:Z

    .line 67
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId2:I

    .line 68
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDataState:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDataState2:I

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mBtTetherState:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIconVisible:Z

    .line 79
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIconId:I

    .line 91
    return-void
.end method

.method private apply()V
    .locals 11

    .prologue
    const v10, 0x7f0200ee

    const v9, 0x7f0200ed

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 190
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 320
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiVisible:Z

    if-eqz v5, :cond_8

    .line 193
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifi:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiStrengthId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiActivityId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    if-nez v5, :cond_a

    .line 210
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimFocus1:Z

    if-eqz v5, :cond_9

    .line 212
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus1:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobile1:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileStrengthId1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup1:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 222
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 224
    .local v2, "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 232
    .end local v2    # "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible2:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    if-nez v5, :cond_c

    .line 233
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimFocus2:Z

    if-eqz v5, :cond_b

    .line 235
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus2:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId2:I

    if-ne v5, v9, :cond_1

    .line 238
    iput v10, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId2:I

    .line 245
    :cond_1
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobile2:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileStrengthId2:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup2:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeDescription2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDescription2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming2:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId2:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming2:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 253
    .restart local v2    # "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 262
    .end local v2    # "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_5
    const/4 v1, 0x0

    .line 264
    .local v1, "mobileTypeId":I
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDataState:I

    if-ne v5, v8, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId1:I

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    if-eqz v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mBtTetherState:Z

    if-eqz v5, :cond_d

    .line 267
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileType:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId1:I

    .line 269
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId1:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 272
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 274
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    .end local v0    # "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    :goto_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    if-eqz v5, :cond_e

    .line 297
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplane:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplaneIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    :goto_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible2:Z

    if-eqz v5, :cond_f

    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiVisible:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    if-eqz v5, :cond_f

    .line 303
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSpacer:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :goto_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIconVisible:Z

    if-eqz v5, :cond_10

    .line 309
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIconId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 317
    :goto_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDataState:I

    if-eq v6, v8, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mBtTetherState:Z

    if-eqz v6, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 201
    .end local v1    # "mobileTypeId":I
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 214
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus1:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 229
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 240
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus2:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId2:I

    if-ne v5, v10, :cond_1

    .line 243
    iput v9, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId2:I

    goto/16 :goto_4

    .line 258
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 278
    .restart local v1    # "mobileTypeId":I
    :cond_d
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDataState2:I

    if-ne v5, v8, :cond_4

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId2:I

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    if-nez v5, :cond_4

    .line 281
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileType:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId2:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId2:I

    .line 283
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId2:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    :try_start_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 288
    .restart local v0    # "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 289
    .end local v0    # "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :catch_0
    move-exception v5

    goto/16 :goto_6

    .line 300
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 305
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSpacer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 313
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 275
    :catch_1
    move-exception v5

    goto/16 :goto_6

    .line 254
    .end local v1    # "mobileTypeId":I
    :catch_2
    move-exception v5

    goto/16 :goto_5

    .line 225
    :catch_3
    move-exception v5

    goto/16 :goto_3
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 102
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiGroup:Landroid/view/ViewGroup;

    .line 103
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifi:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiActivity:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobile1:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobile2:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSpacer:Landroid/view/View;

    .line 108
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup1:Landroid/view/ViewGroup;

    .line 109
    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup2:Landroid/view/ViewGroup;

    .line 110
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 111
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivity:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileType:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming2:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIcon:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus1:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus2:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplane:Landroid/widget/ImageView;

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView_dual;->apply()V

    .line 120
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiGroup:Landroid/view/ViewGroup;

    .line 125
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifi:Landroid/widget/ImageView;

    .line 126
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiActivity:Landroid/widget/ImageView;

    .line 127
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup1:Landroid/view/ViewGroup;

    .line 128
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobile1:Landroid/widget/ImageView;

    .line 129
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivity:Landroid/widget/ImageView;

    .line 130
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileType:Landroid/widget/ImageView;

    .line 131
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileGroup2:Landroid/view/ViewGroup;

    .line 132
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobile2:Landroid/widget/ImageView;

    .line 133
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 134
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming:Landroid/widget/ImageView;

    .line 135
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoaming2:Landroid/widget/ImageView;

    .line 136
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIcon:Landroid/widget/ImageView;

    .line 137
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus1:Landroid/widget/ImageView;

    .line 138
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileFocus2:Landroid/widget/ImageView;

    .line 139
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplane:Landroid/widget/ImageView;

    .line 140
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 141
    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0
    .param p1, "btState"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mBtTetherState:Z

    .line 348
    return-void
.end method

.method public setDataState1(I)V
    .locals 0
    .param p1, "dataState"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDataState:I

    .line 333
    return-void
.end method

.method public setDataState2(I)V
    .locals 0
    .param p1, "dataState"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDataState2:I

    .line 337
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mIsAirplaneMode:Z

    .line 170
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mAirplaneIconId:I

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView_dual;->apply()V

    .line 173
    return-void
.end method

.method public setMobileDataIndicators1(ZIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "simFocus"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible:Z

    .line 157
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileStrengthId1:I

    .line 158
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId1:I

    .line 159
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId1:I

    .line 160
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDescription:Ljava/lang/String;

    .line 161
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeDescription:Ljava/lang/String;

    .line 162
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimFocus1:Z

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView_dual;->apply()V

    .line 165
    return-void
.end method

.method public setMobileDataIndicators2(ZIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "simFocus"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileVisible2:Z

    .line 178
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileStrengthId2:I

    .line 179
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileActivityId2:I

    .line 180
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeId2:I

    .line 181
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileDescription2:Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileTypeDescription2:Ljava/lang/String;

    .line 183
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimFocus2:Z

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView_dual;->apply()V

    .line 186
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    .line 96
    return-void
.end method

.method public setRoamingIcon1(I)V
    .locals 0
    .param p1, "roamingIconId"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId:I

    .line 325
    return-void
.end method

.method public setRoamingIcon2(I)V
    .locals 0
    .param p1, "roamingIconId"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mMobileRoamingId2:I

    .line 329
    return-void
.end method

.method public setSimIcon(ZI)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "simIconId"    # I

    .prologue
    .line 341
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIconId:I

    .line 342
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mSimIconVisible:Z

    .line 343
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiVisible:Z

    .line 147
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiStrengthId:I

    .line 148
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiActivityId:I

    .line 149
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView_dual;->mWifiDescription:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView_dual;->apply()V

    .line 152
    return-void
.end method
