.class public final Lcom/piriform/ccleaner/ui/view/h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/b;
.implements Lcom/piriform/ccleaner/ui/view/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/view/h$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/piriform/ccleaner/ui/view/h$a;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/view/h;-><init>(Landroid/content/Context;B)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2016
    const v0, 0x7f10011c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1051
    check-cast v0, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    .line 3016
    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1052
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->j:Landroid/view/View;

    .line 4016
    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1053
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    .line 5016
    const v0, 0x7f100161

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1054
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    .line 6016
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1055
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->m:Landroid/widget/ImageView;

    .line 7016
    const v0, 0x7f10006c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1056
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->n:Landroid/view/View;

    .line 7060
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7061
    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->e:Landroid/graphics/drawable/Drawable;

    .line 7062
    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->f:Landroid/graphics/drawable/Drawable;

    .line 7063
    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->c:Landroid/graphics/drawable/Drawable;

    .line 7064
    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->d:Landroid/graphics/drawable/Drawable;

    .line 7066
    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/piriform/ccleaner/ui/view/h;->g:I

    .line 7067
    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/piriform/ccleaner/ui/view/h;->h:I

    .line 47
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/h;->setDescendantFocusability(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/h;->a:Z

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->j:Landroid/view/View;

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/h;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->j:Landroid/view/View;

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/h;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 126
    return-void
.end method

.method public final getBackView()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->j:Landroid/view/View;

    return-object v0
.end method

.method public final getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getFrontView()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public final getLockViewInBack()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLockViewInFront()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLockViewOnTop()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getViewHiddenByLock()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->n:Landroid/view/View;

    return-object v0
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public final setDividerVisible(Z)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setDividerVisible(Z)V

    .line 179
    return-void
.end method

.method public final setIconResource(I)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->i:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIcon(I)V

    .line 170
    return-void
.end method

.method public final setLocked(Z)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/view/h;->setLockedState(Z)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/h;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setLockedState(Z)V
    .locals 1

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/piriform/ccleaner/ui/view/h;->a:Z

    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->b:Lcom/piriform/ccleaner/ui/view/h$a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/h;->b:Lcom/piriform/ccleaner/ui/view/h$a;

    invoke-interface {v0, p0, p1}, Lcom/piriform/ccleaner/ui/view/h$a;->a(Landroid/view/View;Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public final setOnLockedChangedListener(Lcom/piriform/ccleaner/ui/view/h$a;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/h;->b:Lcom/piriform/ccleaner/ui/view/h$a;

    .line 154
    return-void
.end method
