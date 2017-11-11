.class public abstract Lcom/piriform/ccleaner/ui/fragment/n;
.super Lcom/piriform/ccleaner/ui/fragment/aa;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;
.implements Lcom/piriform/ccleaner/w/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/piriform/ccleaner/a/a/q;",
        ">",
        "Lcom/piriform/ccleaner/ui/fragment/aa",
        "<TT;>;",
        "Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;",
        "Lcom/piriform/ccleaner/w/a;"
    }
.end annotation


# static fields
.field private static final ak:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/f;",
            "Lcom/piriform/ccleaner/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ad:Lcom/piriform/ccleaner/ui/activity/c;

.field private ae:Lcom/piriform/ccleaner/f/p;

.field private final af:Lcom/piriform/ccleaner/ui/fragment/ah;

.field private ag:Lcom/piriform/ccleaner/a/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private ah:Lcom/piriform/ccleaner/ui/fragment/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/ui/fragment/n",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field private ai:Lcom/piriform/ccleaner/f/o;

.field private aj:Lcom/piriform/ccleaner/f/m;

.field private final al:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private b:Lcom/piriform/ccleaner/d/d;

.field c:Lcom/piriform/ccleaner/ui/activity/b;

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->a:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->p:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->b:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->g:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->c:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->h:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->d:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->i:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->e:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->j:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->f:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->k:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->g:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->l:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->h:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->m:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->i:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->n:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/f;->j:Lcom/piriform/ccleaner/f;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->o:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;-><init>()V

    .line 81
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/n$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/fragment/n$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/n;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->al:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 103
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->I()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ah$a;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/ui/fragment/ah$a;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/ah;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/ah;-><init>(Lcom/piriform/ccleaner/ui/fragment/ah$a;)V

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->af:Lcom/piriform/ccleaner/ui/fragment/ah;

    .line 105
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->h:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method private V()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 407
    .line 24568
    iget-object v1, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 408
    if-nez v1, :cond_0

    move-object v1, v0

    .line 409
    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .line 408
    :cond_0
    const-string/jumbo v2, "pathToFolder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 409
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private W()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->af:Lcom/piriform/ccleaner/ui/fragment/ah;

    .line 26067
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 430
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->af:Lcom/piriform/ccleaner/ui/fragment/ah;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/fragment/ah;->a()Lcom/piriform/ccleaner/core/d;

    move-result-object v1

    .line 431
    sget-object v2, Lcom/piriform/ccleaner/ui/fragment/ah$a;->c:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    if-ne v0, v2, :cond_0

    .line 432
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/h;->b(Z)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/h;->a(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/n;Lcom/piriform/ccleaner/f/o;)Lcom/piriform/ccleaner/f/o;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ai:Lcom/piriform/ccleaner/f/o;

    return-object p1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/n;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/n;->c(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 413
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/c;->b:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 415
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->g()Landroid/support/v4/app/i;

    move-result-object v0

    .line 416
    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/n$a;

    .line 25241
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ae:Lcom/piriform/ccleaner/f/p;

    if-nez v2, :cond_0

    .line 25242
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->aj:Lcom/piriform/ccleaner/f/m;

    invoke-virtual {p0, v0, v2}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ae:Lcom/piriform/ccleaner/f/p;

    .line 25245
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ae:Lcom/piriform/ccleaner/f/p;

    .line 416
    invoke-direct {v1, p0, v0, p1}, Lcom/piriform/ccleaner/ui/fragment/n$a;-><init>(Lcom/piriform/ccleaner/ui/fragment/n;Lcom/piriform/ccleaner/f/p;Ljava/io/File;)V

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ah:Lcom/piriform/ccleaner/ui/fragment/n$a;

    .line 417
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ah:Lcom/piriform/ccleaner/ui/fragment/n$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/n$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 418
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->aa:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 389
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 390
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .line 6269
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6270
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6271
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->h:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6272
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 7059
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 6273
    instance-of v3, v0, Lcom/piriform/ccleaner/a/c;

    if-eqz v3, :cond_0

    .line 6274
    check-cast v0, Lcom/piriform/ccleaner/a/c;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6270
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 253
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/n;->e(Ljava/util/List;)V

    .line 255
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->W()V

    .line 257
    invoke-direct {p0, v2}, Lcom/piriform/ccleaner/ui/fragment/n;->d(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->notifyDataSetChanged()V

    .line 7460
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 261
    if-nez v0, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->Q()V

    .line 265
    :cond_2
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/c;->a:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 266
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2, v0}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v2

    .line 8059
    iget-object v2, v2, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 283
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->h:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 9265
    iget-boolean v1, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 8421
    if-eqz v1, :cond_1

    .line 9460
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 8421
    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 297
    :goto_1
    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->b(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v3

    .line 10460
    iget-boolean v4, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 10425
    if-eqz v4, :cond_3

    sget-object v4, Lcom/piriform/ccleaner/ui/fragment/n;->ak:Ljava/util/Map;

    .line 11235
    iget-object v0, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/f;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/f;

    move-result-object v0

    .line 10425
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/c;

    .line 298
    :goto_2
    invoke-virtual {v1, v3, v0}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 8421
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 10425
    :cond_3
    sget-object v0, Lcom/piriform/ccleaner/a/c;->b:Lcom/piriform/ccleaner/a/c;

    goto :goto_2

    .line 301
    :cond_4
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->c:Lcom/piriform/ccleaner/ui/activity/b;

    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ah:Lcom/piriform/ccleaner/ui/fragment/n$a;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ah:Lcom/piriform/ccleaner/ui/fragment/n$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/n$a;->cancel(Z)Z

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->D_()V

    .line 145
    return-void
.end method

.method protected final J()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->b:Lcom/piriform/ccleaner/d/d;

    .line 14022
    new-instance v2, Lcom/piriform/ccleaner/k/a/e;

    iget-object v3, v1, Lcom/piriform/ccleaner/d/d;->b:Lcom/piriform/ccleaner/a/a/q;

    invoke-direct {v2, v3, v1}, Lcom/piriform/ccleaner/k/a/e;-><init>(Lcom/piriform/ccleaner/a/a/q;Lcom/piriform/ccleaner/d/d;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/k/a/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    return-void
.end method

.method protected K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected L()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected final N()Lcom/piriform/ccleaner/core/a/h;
    .locals 6

    .prologue
    .line 150
    .line 3460
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->N()Lcom/piriform/ccleaner/core/a/h;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->g()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v2

    .line 154
    new-instance v4, Lcom/piriform/ccleaner/core/a/k;

    new-instance v0, Lcom/piriform/ccleaner/core/a/n;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/n;-><init>()V

    invoke-direct {v4, v0}, Lcom/piriform/ccleaner/core/a/k;-><init>(Lcom/piriform/ccleaner/core/a/f;)V

    .line 156
    new-instance v0, Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->g()Landroid/support/v4/app/i;

    move-result-object v1

    .line 4133
    iget-object v2, v2, Lcom/piriform/ccleaner/CCleanerApplication;->b:Lcom/piriform/ccleaner/n/a;

    .line 156
    const/4 v5, 0x1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/a/h;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Z)V

    goto :goto_0
.end method

.method protected final O()Lcom/piriform/ccleaner/f/d;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->aj:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    return-object v0
.end method

.method public final P()Z
    .locals 2

    .prologue
    .line 402
    .line 24460
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 402
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ad:Lcom/piriform/ccleaner/ui/activity/c;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/c;->a:Lcom/piriform/ccleaner/ui/activity/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
.end method

.method public a(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 378
    .line 379
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    move-object v1, v0

    .line 380
    check-cast v1, Lcom/piriform/ccleaner/ui/b/m;

    .line 20059
    iget-object v1, v1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 380
    check-cast v1, Lcom/piriform/ccleaner/f/j;

    .line 20239
    iget v1, v1, Lcom/piriform/ccleaner/f/j;->d:I

    .line 380
    add-int/2addr v1, v2

    .line 381
    check-cast v0, Lcom/piriform/ccleaner/ui/b/m;

    .line 21059
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 381
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 21243
    iget v0, v0, Lcom/piriform/ccleaner/f/j;->e:I

    .line 381
    sub-int v0, v1, v0

    move v2, v0

    .line 382
    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090028

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/app/Activity;)V

    .line 131
    instance-of v0, p1, Lcom/piriform/ccleaner/ui/activity/b;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be attached to an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/piriform/ccleaner/ui/activity/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/activity/b;

    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->c:Lcom/piriform/ccleaner/ui/activity/b;

    .line 135
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->b()Lcom/piriform/ccleaner/f/m;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->aj:Lcom/piriform/ccleaner/f/m;

    .line 136
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/os/Bundle;)V

    .line 2568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 116
    const-string/jumbo v1, "grouping"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 117
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->k()V

    .line 118
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 163
    const v0, 0x7f110007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const v0, 0x7f10017e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 165
    const v1, 0x7f100184

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->P()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->L()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4460
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 169
    if-eqz v0, :cond_1

    const v0, 0x7f080220

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 5460
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 170
    if-eqz v0, :cond_0

    .line 171
    const v0, 0x7f0200d0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 173
    :cond_0
    return-void

    .line 169
    :cond_1
    const v0, 0x7f08021f

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->h:Landroid/widget/ExpandableListView;

    check-cast v0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->setLocker(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;)V

    .line 3202
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->h:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->al:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 126
    return-void
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/piriform/ccleaner/a/a/q;

    .line 27221
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->q_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27222
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->V()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Ljava/io/File;)V

    .line 27232
    :goto_0
    return-void

    .line 27224
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ag:Lcom/piriform/ccleaner/a/a/q;

    .line 27230
    invoke-virtual {p1}, Lcom/piriform/ccleaner/a/a/q;->y()Ljava/util/List;

    move-result-object v0

    .line 27231
    if-eqz v0, :cond_1

    .line 27232
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->c(Ljava/util/List;)V

    goto :goto_0

    .line 27234
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->c:Lcom/piriform/ccleaner/ui/activity/b;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/b;->finish()V

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/ui/activity/c;)V
    .locals 3

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 344
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ad:Lcom/piriform/ccleaner/ui/activity/c;

    .line 345
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->g()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->invalidateOptionsMenu()V

    .line 347
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/n$2;->a:[I

    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/activity/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/activity/c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ab:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 350
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->s_()V

    goto :goto_0

    .line 354
    :pswitch_1
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->K()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_2
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/piriform/ccleaner/ui/fragment/ah$a;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->af:Lcom/piriform/ccleaner/ui/fragment/ah;

    .line 12053
    iget-object v3, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    if-ne v3, p1, :cond_3

    .line 12103
    sget-object v3, Lcom/piriform/ccleaner/ui/fragment/ah$1;->a:[I

    iget-object v4, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {v4}, Lcom/piriform/ccleaner/ui/fragment/ah$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 12114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unhandled case: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/fragment/ah$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12105
    :pswitch_0
    iget-boolean v3, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->d:Z

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->d:Z

    .line 12059
    :goto_1
    iput-object p1, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 305
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->W()V

    .line 306
    return-void

    :cond_0
    move v0, v1

    .line 12105
    goto :goto_0

    .line 12108
    :pswitch_1
    iget-boolean v3, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->e:Z

    if-nez v3, :cond_1

    :goto_2
    iput-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->e:Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 12111
    :pswitch_2
    iget-boolean v3, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->f:Z

    if-nez v3, :cond_2

    :goto_3
    iput-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->f:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    .line 13097
    :cond_3
    iget-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->a:Z

    iput-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->d:Z

    .line 13098
    iget-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->c:Z

    iput-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->f:Z

    .line 13099
    iget-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->b:Z

    iput-boolean v0, v2, Lcom/piriform/ccleaner/ui/fragment/ah;->e:Z

    goto :goto_1

    .line 12103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 394
    check-cast p1, Lcom/piriform/ccleaner/ui/b/m;

    .line 22059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 395
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 396
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->aj:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/m;->b()Lcom/piriform/ccleaner/f/l;

    move-result-object v1

    .line 23256
    iput-boolean p2, v0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 24217
    iget-object v0, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 22261
    invoke-interface {v1, v0, p2}, Lcom/piriform/ccleaner/f/l;->a(Ljava/lang/String;Z)V

    .line 399
    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 178
    packed-switch v0, :pswitch_data_0

    .line 189
    :pswitch_0
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 180
    :pswitch_1
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->a:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Lcom/piriform/ccleaner/ui/fragment/ah$a;)V

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :pswitch_2
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->c:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Lcom/piriform/ccleaner/ui/fragment/ah$a;)V

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :pswitch_3
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->g()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/activity/b;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/b;->h()V

    move v0, v1

    .line 187
    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x7f10017f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected b(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/core/a/b;
    .locals 1

    .prologue
    .line 309
    .line 13460
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 309
    if-eqz v0, :cond_0

    new-instance v0, Lcom/piriform/ccleaner/ui/b/o;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/ui/b/o;-><init>(Lcom/piriform/ccleaner/f/j;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/ui/b/m;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/ui/b/m;-><init>(Lcom/piriform/ccleaner/f/j;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/piriform/ccleaner/a/a/q;

    .line 28216
    new-instance v0, Lcom/piriform/ccleaner/d/d;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/d/d;-><init>(Lcom/piriform/ccleaner/w/a;Lcom/piriform/ccleaner/a/a/q;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->b:Lcom/piriform/ccleaner/d/d;

    .line 47
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->c:Lcom/piriform/ccleaner/ui/activity/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->c:Lcom/piriform/ccleaner/ui/activity/b;

    .line 14100
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/activity/b;->n:Lcom/piriform/ccleaner/b/d;

    .line 15011
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 15012
    iget-wide v4, v1, Lcom/piriform/ccleaner/b/d;->a:J

    .line 15231
    iget-wide v6, v0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 15012
    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/piriform/ccleaner/b/d;->a:J

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->q_()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15335
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->V()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Ljava/io/File;)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    .line 15460
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 329
    invoke-virtual {v0, p1, v1}, Lcom/piriform/ccleaner/core/a/h;->a(Ljava/util/List;Z)V

    .line 330
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ag:Lcom/piriform/ccleaner/a/a/q;

    .line 16450
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/a/a/q;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected final c(Lcom/piriform/ccleaner/f/j;)V
    .locals 3

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 109
    const-string/jumbo v1, "pathToFolder"

    .line 2217
    iget-object v2, p1, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 464
    .line 26568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 464
    const-string/jumbo v1, "grouping"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    iput-boolean p1, p0, Lcom/piriform/ccleaner/ui/fragment/n;->d:Z

    .line 466
    return-void
.end method

.method public abstract q_()Z
.end method

.method protected final r_()Ljava/lang/String;
    .locals 7

    .prologue
    .line 366
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ag:Lcom/piriform/ccleaner/a/a/q;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ai:Lcom/piriform/ccleaner/f/o;

    .line 17018
    iget-wide v0, v0, Lcom/piriform/ccleaner/f/o;->b:J

    .line 368
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ai:Lcom/piriform/ccleaner/f/o;

    .line 18010
    iget v2, v2, Lcom/piriform/ccleaner/f/o;->a:I

    .line 369
    invoke-static {v0, v1}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/n;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09000e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n;->ag:Lcom/piriform/ccleaner/a/a/q;

    .line 18257
    iget-object v0, v0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 19088
    iget-object v0, v0, Lcom/piriform/ccleaner/core/i;->c:Ljava/lang/String;

    goto :goto_0
.end method
