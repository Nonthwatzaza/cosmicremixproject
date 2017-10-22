.class Lcom/android/settings/SimListPreference$SimListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimListArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/android/settings/SimListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/SimListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "selected"    # I

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    .line 301
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 302
    iput p5, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->index:I

    .line 303
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 308
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400fb

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "row":Landroid/view/View;
    const v4, 0x7f0b02d0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 312
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    iget-object v4, v4, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    const v4, 0x7f0b02d1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 315
    .local v3, "text_radio":Landroid/widget/CheckedTextView;
    iget-object v4, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    iget-object v4, v4, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget v4, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->index:I

    if-ne p1, v4, :cond_0

    .line 318
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 321
    :cond_0
    return-object v2
.end method
