.class Lcom/android/systemui/sapps/SAppsPanel$IconInfo;
.super Ljava/lang/Object;
.source "SAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconInfo"
.end annotation


# instance fields
.field ci:Landroid/content/pm/ComponentInfo;

.field iconLandscapeFocus:Landroid/graphics/drawable/Drawable;

.field iconLandscapeNormal:Landroid/graphics/drawable/Drawable;

.field iconPortraitFocus:Landroid/graphics/drawable/Drawable;

.field iconPortraitNormal:Landroid/graphics/drawable/Drawable;

.field mPreview:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sapps/SAppsPanel;Landroid/content/pm/ComponentInfo;)V
    .locals 1
    .param p2, "componentInfo"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->this$0:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    .line 92
    const-string v0, "com.sec.minimode.icon.portrait.normal"

    invoke-direct {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconPortraitNormal:Landroid/graphics/drawable/Drawable;

    .line 93
    const-string v0, "com.sec.minimode.icon.portrait.focus"

    invoke-direct {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconPortraitFocus:Landroid/graphics/drawable/Drawable;

    .line 94
    const-string v0, "com.sec.minimode.icon.landscape.normal"

    invoke-direct {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconLandscapeNormal:Landroid/graphics/drawable/Drawable;

    .line 95
    const-string v0, "com.sec.minimode.icon.landscape.focus"

    invoke-direct {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconLandscapeFocus:Landroid/graphics/drawable/Drawable;

    .line 96
    const-string v0, "com.sec.minimode.icon.preview.normal"

    invoke-direct {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method

.method private getFullResDefaultServiceIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ComponentInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ci"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->this$0:Lcom/android/systemui/sapps/SAppsPanel;

    # getter for: Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/sapps/SAppsPanel;->access$000(Lcom/android/systemui/sapps/SAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    .line 148
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 143
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 152
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->getFullResDefaultServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->this$0:Lcom/android/systemui/sapps/SAppsPanel;

    # getter for: Lcom/android/systemui/sapps/SAppsPanel;->mIconDpi:I
    invoke-static {v0}, Lcom/android/systemui/sapps/SAppsPanel;->access$100(Lcom/android/systemui/sapps/SAppsPanel;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v2

    .line 103
    .local v2, "iconId":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 106
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->this$0:Lcom/android/systemui/sapps/SAppsPanel;

    # getter for: Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/systemui/sapps/SAppsPanel;->access$000(Lcom/android/systemui/sapps/SAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v3, :cond_0

    .line 111
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_1
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 113
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->getFullResDefaultServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 116
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    invoke-direct {p0, v4}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->getFullResIcon(Landroid/content/pm/ComponentInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getIcon(ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "isPortrait"    # Z
    .param p2, "focus"    # Z

    .prologue
    .line 124
    if-eqz p1, :cond_1

    .line 125
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconPortraitFocus:Landroid/graphics/drawable/Drawable;

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconPortraitNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 128
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconLandscapeFocus:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->iconLandscapeNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
