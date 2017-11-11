.class public final Lcom/piriform/ccleaner/ui/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/ui/view/e;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/e;->a:Z

    .line 21
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/e;->b:Landroid/graphics/drawable/Drawable;

    .line 22
    iput p2, p0, Lcom/piriform/ccleaner/ui/view/e;->c:I

    .line 23
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/e;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget v2, p0, Lcom/piriform/ccleaner/ui/view/e;->c:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 27
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/e;->a:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    :cond_0
    return-void
.end method
