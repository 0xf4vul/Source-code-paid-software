.class public Lcom/piriform/ccleaner/appmanager/AppManagerActivity;
.super Lcom/piriform/ccleaner/ui/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/appmanager/k;
.implements Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;
    }
.end annotation


# static fields
.field private static final s:I


# instance fields
.field private final A:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<-",
            "Lcom/piriform/ccleaner/core/data/b;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private final C:Lf/j/b;

.field private final D:Lf/j/b;

.field private final E:Lcom/piriform/ccleaner/q/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/c$a",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Lcom/piriform/ccleaner/appmanager/l$a;

.field m:Lcom/piriform/ccleaner/appmanager/j;

.field n:Lcom/piriform/ccleaner/b/e;

.field o:Lcom/piriform/ccleaner/s/j;

.field p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

.field q:Lcom/piriform/ccleaner/appmanager/d;

.field private t:Lcom/piriform/ccleaner/appmanager/l;

.field private u:Landroid/support/v4/view/ViewPager;

.field private v:Lcom/piriform/ccleaner/ui/fragment/aq;

.field private w:I

.field private x:Lcom/piriform/ccleaner/appmanager/e;

.field private final y:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

.field private z:Lcom/piriform/ccleaner/appmanager/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/piriform/ccleaner/appmanager/f;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;-><init>()V

    .line 64
    sget v0, Lcom/piriform/ccleaner/d;->a:I

    iput v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->w:I

    .line 67
    new-instance v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->y:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    .line 89
    new-instance v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->A:Lf/e;

    .line 108
    new-instance v0, Lf/j/b;

    invoke-direct {v0}, Lf/j/b;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->C:Lf/j/b;

    .line 109
    new-instance v0, Lf/j/b;

    invoke-direct {v0}, Lf/j/b;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->D:Lf/j/b;

    .line 110
    new-instance v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$3;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$3;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->E:Lcom/piriform/ccleaner/q/c$a;

    .line 119
    new-instance v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->F:Lcom/piriform/ccleaner/appmanager/l$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const-string/jumbo v1, "is_storage_analyzer_drilldown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->v:Lcom/piriform/ccleaner/ui/fragment/aq;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/aq;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    .line 375
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->v:Lcom/piriform/ccleaner/ui/fragment/aq;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/aq;->a()Ljava/util/Comparator;

    move-result-object v2

    .line 19024
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 19025
    iget-object v3, v1, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    aget-object v3, v3, v0

    .line 19026
    invoke-virtual {v3, v2}, Lcom/piriform/ccleaner/appmanager/o;->a(Ljava/util/Comparator;)V

    .line 19027
    iget-object v3, v1, Lcom/piriform/ccleaner/appmanager/d;->b:Lcom/piriform/ccleaner/appmanager/d$a;

    invoke-interface {v3, v0}, Lcom/piriform/ccleaner/appmanager/d$a;->a(I)V

    .line 19024
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 5

    .prologue
    .line 44
    .line 23397
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    .line 24253
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->k()Lcom/piriform/ccleaner/appmanager/o;

    move-result-object v1

    .line 25087
    iget-object v1, v1, Lcom/piriform/ccleaner/appmanager/o;->d:Ljava/util/Set;

    .line 25095
    new-instance v2, Lcom/piriform/ccleaner/rooted/e;

    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/rooted/e;-><init>(Lcom/piriform/ccleaner/appmanager/k;)V

    .line 26025
    iget-object v0, v2, Lcom/piriform/ccleaner/rooted/e;->b:Lcom/piriform/ccleaner/appmanager/k;

    sget v3, Lcom/piriform/ccleaner/d;->b:I

    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/appmanager/k;->b(I)V

    .line 26026
    iget-object v0, v2, Lcom/piriform/ccleaner/rooted/e;->a:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 26029
    :goto_0
    iget-object v0, v2, Lcom/piriform/ccleaner/rooted/e;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26030
    iget-object v0, v2, Lcom/piriform/ccleaner/rooted/e;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 26031
    new-instance v1, Lcom/piriform/ccleaner/rooted/c;

    iget-object v3, v2, Lcom/piriform/ccleaner/rooted/e;->c:Lcom/piriform/ccleaner/rooted/l$a;

    invoke-direct {v1, v3}, Lcom/piriform/ccleaner/rooted/c;-><init>(Lcom/piriform/ccleaner/rooted/l$a;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/piriform/ccleaner/core/data/AndroidPackage;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 26032
    invoke-virtual {v1, v3}, Lcom/piriform/ccleaner/rooted/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 26318
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->t:Lcom/piriform/ccleaner/appmanager/l;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/l;->a()V

    .line 44
    return-void
.end method

.method static synthetic c(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 4

    .prologue
    .line 44
    .line 26392
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    .line 27253
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->k()Lcom/piriform/ccleaner/appmanager/o;

    move-result-object v1

    .line 28087
    iget-object v1, v1, Lcom/piriform/ccleaner/appmanager/o;->d:Ljava/util/Set;

    .line 29076
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    sget v3, Lcom/piriform/ccleaner/d;->b:I

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/appmanager/k;->b(I)V

    .line 29077
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/e;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 29078
    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/e;->b()V

    .line 29318
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->t:Lcom/piriform/ccleaner/appmanager/l;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/l;->a()V

    .line 44
    return-void
.end method

.method static synthetic d(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 4

    .prologue
    .line 44
    .line 29387
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    .line 30253
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->k()Lcom/piriform/ccleaner/appmanager/o;

    move-result-object v1

    .line 31087
    iget-object v1, v1, Lcom/piriform/ccleaner/appmanager/o;->d:Ljava/util/Set;

    .line 32042
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    sget v3, Lcom/piriform/ccleaner/d;->c:I

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/appmanager/k;->b(I)V

    .line 32043
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/piriform/ccleaner/appmanager/e;->e:Z

    .line 32044
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/e;->b:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 32045
    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/e;->a()V

    .line 32318
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->t:Lcom/piriform/ccleaner/appmanager/l;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/l;->a()V

    .line 44
    return-void
.end method

.method static synthetic e(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->j()V

    return-void
.end method

.method static synthetic f(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 1

    .prologue
    .line 44
    .line 33318
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->t:Lcom/piriform/ccleaner/appmanager/l;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/l;->a()V

    .line 44
    return-void
.end method

.method static synthetic g(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    .line 33360
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    .line 33365
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 33360
    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/d;->a(IZ)V

    .line 34171
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->H:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 44
    return-void
.end method

.method static synthetic h(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    .line 34369
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    .line 35365
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 34369
    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/d;->a(IZ)V

    .line 36175
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c;->H:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 44
    return-void
.end method

.method static synthetic i(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    return-object v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_0

    const-string/jumbo v2, "is_storage_analyzer_drilldown"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    .line 18194
    iget v2, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->w:I

    .line 17379
    sget v4, Lcom/piriform/ccleaner/d;->a:I

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 352
    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->k()Lcom/piriform/ccleaner/appmanager/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/piriform/ccleaner/appmanager/o;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->setButtonsEnabled(Z)V

    .line 353
    return-void

    :cond_0
    move v2, v1

    .line 17379
    goto :goto_0

    :cond_1
    move v0, v1

    .line 352
    goto :goto_1
.end method

.method static synthetic j(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 3

    .prologue
    .line 44
    .line 36356
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->t:Lcom/piriform/ccleaner/appmanager/l;

    .line 37060
    iget-boolean v1, v0, Lcom/piriform/ccleaner/appmanager/l;->a:Z

    .line 37043
    if-nez v1, :cond_0

    .line 37044
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/piriform/ccleaner/appmanager/l;->a:Z

    .line 37045
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/l;->c:Lcom/piriform/ccleaner/appmanager/l$a;

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/l;->d:Landroid/view/ActionMode$Callback;

    invoke-interface {v1, v2}, Lcom/piriform/ccleaner/appmanager/l$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/appmanager/l;->b:Landroid/view/ActionMode;

    .line 37046
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/l;->b:Landroid/view/ActionMode;

    const v1, 0x7f0801fd

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)Lcom/piriform/ccleaner/appmanager/l;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->t:Lcom/piriform/ccleaner/appmanager/l;

    return-object v0
.end method

.method private k()Lcom/piriform/ccleaner/appmanager/o;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    .line 19365
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 20020
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    aget-object v0, v0, v1

    .line 383
    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 402
    .line 20434
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->C:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->d()Z

    move-result v0

    .line 402
    if-nez v0, :cond_2

    .line 21206
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    .line 22057
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 22058
    iget-object v2, v1, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    aget-object v2, v2, v0

    .line 23031
    iget-object v3, v2, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 23032
    invoke-virtual {v2}, Lcom/piriform/ccleaner/appmanager/o;->a()V

    .line 23033
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/piriform/ccleaner/appmanager/o;->a:J

    .line 22059
    iget-object v2, v1, Lcom/piriform/ccleaner/appmanager/d;->b:Lcom/piriform/ccleaner/appmanager/d$a;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/appmanager/d$a;->a(I)V

    .line 22057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    sget v0, Lcom/piriform/ccleaner/d;->b:I

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->b(I)V

    .line 405
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->m:Lcom/piriform/ccleaner/appmanager/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/j;->b()V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->C:Lf/j/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->m:Lcom/piriform/ccleaner/appmanager/j;

    .line 409
    invoke-interface {v1}, Lcom/piriform/ccleaner/appmanager/j;->a()Lf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->A:Lf/e;

    invoke-virtual {v1, v2}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lf/j/b;->a(Lf/j;)V

    .line 413
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)V
    .locals 12

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 216
    iget-object v5, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    move v1, v2

    .line 6043
    :goto_0
    iget-object v0, v5, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 6044
    iget-object v0, v5, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    aget-object v6, v0, v1

    move v3, v2

    .line 6051
    :goto_1
    iget-object v0, v6, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 6052
    iget-object v0, v6, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/b;

    .line 7022
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 6053
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6054
    invoke-virtual {v6, v0, v2}, Lcom/piriform/ccleaner/appmanager/o;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Z)V

    .line 6055
    iget-wide v8, v6, Lcom/piriform/ccleaner/appmanager/o;->a:J

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/piriform/ccleaner/appmanager/o;->a:J

    .line 6056
    iget-object v0, v6, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6046
    :goto_2
    if-eq v3, v4, :cond_0

    .line 6047
    iget-object v0, v5, Lcom/piriform/ccleaner/appmanager/d;->b:Lcom/piriform/ccleaner/appmanager/d$a;

    invoke-interface {v0, v1, v3}, Lcom/piriform/ccleaner/appmanager/d$a;->b(II)V

    .line 6043
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6051
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v4

    .line 6061
    goto :goto_2

    .line 217
    :cond_3
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    new-instance v1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$6;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$6;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 9151
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 9152
    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getDialogPosition()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v2

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b:Landroid/view/View;

    .line 9153
    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b(Landroid/view/View;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v2

    .line 10092
    iput v4, v2, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    .line 10097
    iput v4, v2, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b:F

    .line 9156
    invoke-virtual {v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b()V

    .line 9158
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getHidingAnimation()Landroid/animation/Animator;

    move-result-object v2

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a:Landroid/view/View;

    invoke-static {v3}, Lcom/piriform/ccleaner/ui/a;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 9159
    new-instance v3, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$3;

    invoke-direct {v3, v0, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$3;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9166
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    return-void
.end method

.method public final b(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 199
    iput p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->w:I

    .line 200
    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->z:Lcom/piriform/ccleaner/appmanager/h;

    sget v0, Lcom/piriform/ccleaner/d;->b:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 6028
    :goto_0
    iget-object v2, v2, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 6029
    invoke-virtual {v4, v0}, Lcom/piriform/ccleaner/appmanager/g;->setSpinnerVisible(Z)V

    .line 6028
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->j()V

    .line 202
    return-void
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    new-instance v1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$5;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$5;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 1099
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->f:Landroid/graphics/Rect;

    .line 1100
    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v2

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b:Landroid/view/View;

    .line 1101
    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b(Landroid/view/View;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v2

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    .line 1102
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 2092
    iput v3, v2, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    .line 2097
    const/4 v3, 0x0

    iput v3, v2, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b:F

    .line 1104
    invoke-virtual {v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b()V

    .line 1106
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/a;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a:Landroid/view/View;

    invoke-static {v3}, Lcom/piriform/ccleaner/ui/a;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 1107
    new-instance v3, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$2;

    invoke-direct {v3, v0, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$2;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1114
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 149
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 221
    .line 7348
    iget-boolean v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->B:Z

    .line 221
    if-eqz v0, :cond_0

    .line 8416
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->C:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->a()V

    .line 7421
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->m:Lcom/piriform/ccleaner/appmanager/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/j;->b()V

    .line 7422
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->l()V

    .line 224
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Lcom/piriform/ccleaner/rooted/p;->I()Lcom/piriform/ccleaner/rooted/p;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    .line 9040
    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v1

    .line 9041
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/h;Ljava/lang/String;)Landroid/support/v4/app/q;

    .line 9042
    invoke-virtual {v1}, Landroid/support/v4/app/q;->b()I

    .line 229
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 153
    const/16 v0, 0x21c6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21c7

    if-ne p1, v0, :cond_4

    .line 154
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    move v0, v1

    .line 155
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    .line 3068
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/appmanager/k;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)V

    .line 3070
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 3166
    iget-boolean v2, v2, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    .line 3070
    if-eqz v2, :cond_1

    .line 3071
    iput-boolean v1, v0, Lcom/piriform/ccleaner/appmanager/e;->e:Z

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/e;->a()V

    .line 162
    :cond_2
    :goto_1
    return-void

    .line 154
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_4
    const/16 v0, 0x21c8

    if-ne p1, v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/e;->b()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    .line 3196
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4140
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    .line 4141
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getDialogPosition()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->f:Landroid/graphics/Rect;

    .line 4142
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v1

    .line 5092
    const/4 v2, 0x0

    iput v2, v1, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    .line 4143
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    .line 4144
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 5097
    iput v2, v1, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b:F

    .line 4145
    invoke-virtual {v1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b()V

    .line 4147
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->d:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getHidingAnimation()Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/a;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3198
    const/4 v0, 0x1

    .line 173
    :goto_0
    if-nez v0, :cond_0

    .line 174
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onBackPressed()V

    .line 176
    :cond_0
    return-void

    .line 3200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 261
    new-instance v0, Lcom/piriform/ccleaner/appmanager/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->o:Lcom/piriform/ccleaner/s/j;

    invoke-direct {v0, p0, p0, v1}, Lcom/piriform/ccleaner/appmanager/e;-><init>(Lcom/piriform/ccleaner/appmanager/k;Lcom/piriform/ccleaner/appmanager/AppManagerActivity;Lcom/piriform/ccleaner/s/j;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    .line 262
    new-instance v0, Lcom/piriform/ccleaner/appmanager/l;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->F:Lcom/piriform/ccleaner/appmanager/l$a;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/appmanager/l;-><init>(Lcom/piriform/ccleaner/appmanager/l$a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->t:Lcom/piriform/ccleaner/appmanager/l;

    .line 263
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/aq;

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->b:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/aq;-><init>(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->v:Lcom/piriform/ccleaner/ui/fragment/aq;

    .line 265
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->setContentView(I)V

    .line 11024
    const v0, 0x7f100089

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10322
    check-cast v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    .line 12024
    const v0, 0x7f100088

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10323
    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    .line 12327
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->setDialogListener(Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;)V

    .line 12328
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->p:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->y:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->setButtonClickListener(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;)V

    .line 12332
    new-instance v0, Lcom/piriform/ccleaner/appmanager/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->v:Lcom/piriform/ccleaner/ui/fragment/aq;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/fragment/aq;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/appmanager/d;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    .line 12333
    new-instance v0, Lcom/piriform/ccleaner/appmanager/h;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/h;-><init>(Landroid/view/ViewGroup;Lcom/piriform/ccleaner/appmanager/d;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->z:Lcom/piriform/ccleaner/appmanager/h;

    .line 12334
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->z:Lcom/piriform/ccleaner/appmanager/h;

    .line 13053
    iput-object v1, v0, Lcom/piriform/ccleaner/appmanager/d;->b:Lcom/piriform/ccleaner/appmanager/d$a;

    .line 12335
    new-instance v0, Lcom/piriform/ccleaner/appmanager/i;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->z:Lcom/piriform/ccleaner/appmanager/h;

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/i;-><init>(Landroid/content/res/Resources;Lcom/piriform/ccleaner/appmanager/h;)V

    .line 13339
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/s;)V

    .line 13340
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    sget v1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->s:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 13341
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 14024
    const v0, 0x7f1000b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 13343
    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 13344
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->u:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 274
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 167
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 181
    packed-switch v1, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->b:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    goto :goto_0

    .line 186
    :pswitch_1
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/aq$a;->a:Lcom/piriform/ccleaner/ui/fragment/aq$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->a(Lcom/piriform/ccleaner/ui/fragment/aq$a;)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f10017f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 305
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->E:Lcom/piriform/ccleaner/q/c$a;

    .line 16070
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 16118
    iget-object v4, v4, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v4, v1}, Lcom/piriform/ccleaner/q/c;->b(Lcom/piriform/ccleaner/q/c$a;)V

    .line 16070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onPause()V

    .line 307
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 293
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->E:Lcom/piriform/ccleaner/q/c$a;

    .line 15064
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 15065
    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/appmanager/o;->a(Lcom/piriform/ccleaner/q/c$a;)V

    .line 15064
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 283
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onStart()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->B:Z

    .line 285
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->l()V

    .line 286
    invoke-direct {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14426
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->D:Lf/j/b;

    const-class v1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/piriform/ccleaner/p/a/a;->a(Ljava/lang/Class;Landroid/content/Context;)Lf/d;

    move-result-object v1

    invoke-virtual {v1}, Lf/d;->c()Lf/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/j/b;->a(Lf/j;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 311
    .line 16416
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->C:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->a()V

    .line 16430
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->D:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->a()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->B:Z

    .line 314
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onStop()V

    .line 315
    return-void
.end method

.method protected final z_()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->z_()V

    .line 300
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->x:Lcom/piriform/ccleaner/appmanager/e;

    .line 16035
    iget-boolean v1, v0, Lcom/piriform/ccleaner/appmanager/e;->e:Z

    if-eqz v1, :cond_0

    .line 16036
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    invoke-interface {v1}, Lcom/piriform/ccleaner/appmanager/k;->h()V

    .line 16037
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/piriform/ccleaner/appmanager/e;->e:Z

    .line 301
    :cond_0
    return-void
.end method
