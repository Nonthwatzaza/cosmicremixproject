.class Lcom/android/settings/NotificationPanelMenu$3;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 106
    const/4 v7, 0x1

    .line 107
    .local v7, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 109
    .local v1, "dragEvent":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 110
    .local v8, "tag":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "panelInfo":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v5, v9

    .line 112
    .local v0, "category":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, "idx":I
    const-string v9, "active"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 116
    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/settings/NotificationPanelMenu;->access$200(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 120
    .local v6, "panelView":Landroid/view/View;
    :goto_0
    const v9, 0x7f0b0267

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 122
    .local v4, "panelBorder":Landroid/widget/LinearLayout;
    packed-switch v1, :pswitch_data_0

    .line 150
    :cond_0
    :goto_1
    :pswitch_0
    return v7

    .line 118
    .end local v4    # "panelBorder":Landroid/widget/LinearLayout;
    .end local v6    # "panelView":Landroid/view/View;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/settings/NotificationPanelMenu;->access$300(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .restart local v6    # "panelView":Landroid/view/View;
    goto :goto_0

    .line 124
    .restart local v4    # "panelBorder":Landroid/widget/LinearLayout;
    :pswitch_1
    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V
    invoke-static {v9, p1}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    .line 125
    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v9}, Lcom/android/settings/NotificationPanelMenu;->access$500(Lcom/android/settings/NotificationPanelMenu;)V

    goto :goto_1

    .line 129
    :pswitch_2
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 133
    :pswitch_3
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 140
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    .line 141
    .local v3, "isNormalEnded":Z
    if-nez v3, :cond_0

    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/NotificationPanelMenu;->access$100(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 142
    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/NotificationPanelMenu;->access$100(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
