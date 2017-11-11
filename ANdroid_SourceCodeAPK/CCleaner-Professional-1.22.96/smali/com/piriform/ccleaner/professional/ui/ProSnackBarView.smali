.class public final Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/ui/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            "Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

.field private f:Lcom/piriform/ccleaner/professional/ui/b$a;

.field private final g:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2042
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2043
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->b:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->d:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->e:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->d:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->c:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    sget-object v1, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->b:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$1;-><init>(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->g:Landroid/view/View$OnClickListener;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;)Lcom/piriform/ccleaner/professional/ui/b$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->f:Lcom/piriform/ccleaner/professional/ui/b$a;

    return-object v0
.end method

.method private a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->e:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    .line 92
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setMessage(I)V

    .line 93
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->b(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setAction(I)V

    .line 94
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->c(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setBackgroundColorResId(I)V

    .line 95
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->d(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setShown(Z)V

    .line 1188
    iget-boolean v0, p1, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->f:Z

    .line 96
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setProgressBarVisible(Z)V

    .line 97
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;)Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->e:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    return-object v0
.end method

.method private setAction(I)V
    .locals 2

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setBackgroundColorResId(I)V
    .locals 1

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setVisibility(I)V

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setBackgroundColor(I)V

    .line 123
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->refreshDrawableState()V

    goto :goto_0
.end method

.method private setMessage(I)V
    .locals 2

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setProgressBarVisible(Z)V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->d:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setShown(Z)V
    .locals 1

    .prologue
    .line 128
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->setVisibility(I)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)V

    .line 88
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/professional/m;)V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)V

    .line 83
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030095

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    const v0, 0x7f10016d

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->b:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f10016f

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->c:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->d:Landroid/widget/ProgressBar;

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)V

    .line 74
    return-void
.end method

.method public final setListener(Lcom/piriform/ccleaner/professional/ui/b$a;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->f:Lcom/piriform/ccleaner/professional/ui/b$a;

    .line 78
    return-void
.end method
