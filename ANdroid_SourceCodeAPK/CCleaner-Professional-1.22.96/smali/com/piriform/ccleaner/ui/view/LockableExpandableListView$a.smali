.class final Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->a:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->e:Z

    .line 368
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->b:Landroid/view/View;

    .line 369
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->d:Landroid/view/View;

    .line 370
    iput-object p4, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->c:Landroid/view/View;

    .line 371
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->a:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$a;->e:Z

    .line 381
    :cond_0
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
