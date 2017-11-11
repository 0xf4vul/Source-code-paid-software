.class public Lcom/facebook/ads/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/k$c;,
        Lcom/facebook/ads/k$d;,
        Lcom/facebook/ads/k$b;,
        Lcom/facebook/ads/k$a;
    }
.end annotation


# static fields
.field private static final e:Lcom/facebook/ads/internal/f;

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/k;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field protected a:Lcom/facebook/ads/internal/b/ac;

.field b:Lcom/facebook/ads/MediaView;

.field c:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Landroid/view/View;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/facebook/ads/internal/d/b;

.field private l:Lcom/facebook/ads/d;

.field private m:Lcom/facebook/ads/internal/b;

.field private volatile n:Z

.field private o:Lcom/facebook/ads/internal/g/e;

.field private p:Landroid/view/View;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/view/View$OnTouchListener;

.field private s:Lcom/facebook/ads/internal/k/a;

.field private final t:Lcom/facebook/ads/internal/m/i;

.field private u:Lcom/facebook/ads/internal/b/ab;

.field private v:Lcom/facebook/ads/k$c;

.field private w:Lcom/facebook/ads/internal/view/p;

.field private x:Lcom/facebook/ads/l$a;

.field private y:Z

.field private z:Lcom/facebook/ads/internal/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/f;->a:Lcom/facebook/ads/internal/f;

    sput-object v0, Lcom/facebook/ads/k;->e:Lcom/facebook/ads/internal/f;

    const-class v0, Lcom/facebook/ads/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/k;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/k;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/k;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/k;->q:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/internal/m/i;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/i;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/k;->t:Lcom/facebook/ads/internal/m/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/k;->A:Z

    iput-object p1, p0, Lcom/facebook/ads/k;->h:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/k;->i:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/d/b;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/k;->k:Lcom/facebook/ads/internal/d/b;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/k;->d:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/ac;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/k;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/k;->n:Z

    iput-object p2, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/k;->d:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/k;)Lcom/facebook/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->l:Lcom/facebook/ads/d;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/m/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->t:Lcom/facebook/ads/internal/m/i;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/k/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->u:Lcom/facebook/ads/internal/b/ab;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/k/a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/k;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/k;)Lcom/facebook/ads/l$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->x:Lcom/facebook/ads/l$a;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/k;->y:Z

    return v0
.end method

.method static synthetic i(Lcom/facebook/ads/k;)Lcom/facebook/ads/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->b:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/facebook/ads/k;->g:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/k;->g:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "View not registered with this NativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/k;->w:Lcom/facebook/ads/internal/view/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/ads/k;->w:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/facebook/ads/k;->w:Lcom/facebook/ads/internal/view/p;

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->c()V

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/k;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k;->a()V

    iget-object v0, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget-object v0, Lcom/facebook/ads/k;->g:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/facebook/ads/k;->k()V

    iput-object v2, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k/a;->b()V

    iput-object v2, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    :cond_6
    iput-object v2, p0, Lcom/facebook/ads/k;->u:Lcom/facebook/ads/internal/b/ab;

    goto :goto_0
.end method

.method static synthetic j(Lcom/facebook/ads/k;)Z
    .locals 2

    .prologue
    .line 0
    .line 20000
    invoke-virtual {p0}, Lcom/facebook/ads/k;->f()I

    move-result v0

    sget v1, Lcom/facebook/ads/p;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/k;->c:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/k;->f()I

    move-result v0

    sget v1, Lcom/facebook/ads/p;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method

.method static synthetic k(Lcom/facebook/ads/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->h:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic l(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/k;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/ads/k;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->r:Landroid/view/View$OnTouchListener;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/ads/k$a;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->j()Lcom/facebook/ads/k$a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 0
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must provide a View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid set of clickable views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/facebook/ads/k;->f:Ljava/lang/String;

    const-string/jumbo v1, "Ad not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/ads/k;->f:Ljava/lang/String;

    const-string/jumbo v1, "Native Ad was already registered with a View. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/facebook/ads/k;->j()V

    :cond_4
    sget-object v0, Lcom/facebook/ads/k;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/facebook/ads/k;->f:Ljava/lang/String;

    const-string/jumbo v1, "View already registered with a NativeAd. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/facebook/ads/k;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/k;

    invoke-direct {v0}, Lcom/facebook/ads/k;->j()V

    :cond_5
    new-instance v0, Lcom/facebook/ads/k$c;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/k$c;-><init>(Lcom/facebook/ads/k;B)V

    iput-object v0, p0, Lcom/facebook/ads/k;->v:Lcom/facebook/ads/k$c;

    iput-object p1, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/facebook/ads/internal/view/p;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/k$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/k$1;-><init>(Lcom/facebook/ads/k;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/p;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/k;->w:Lcom/facebook/ads/internal/view/p;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/ads/k;->w:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/facebook/ads/k;->d:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/k;->d:Landroid/view/View;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1000
    iget-object v2, p0, Lcom/facebook/ads/k;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/facebook/ads/k;->v:Lcom/facebook/ads/k$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/facebook/ads/k;->v:Lcom/facebook/ads/k$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/l;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/ads/k;->v:Lcom/facebook/ads/k$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 0
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0, p1, v7}, Lcom/facebook/ads/internal/b/ac;->a(Landroid/view/View;Ljava/util/List;)V

    .line 2000
    iget-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    .line 3000
    iget v2, v0, Lcom/facebook/ads/internal/g/e;->e:I

    .line 0
    :goto_2
    new-instance v0, Lcom/facebook/ads/internal/k/a;

    iget-object v1, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    .line 5000
    iget-object v3, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    .line 6000
    iget v3, v3, Lcom/facebook/ads/internal/g/e;->f:I

    .line 0
    :goto_3
    new-instance v5, Lcom/facebook/ads/k$2;

    invoke-direct {v5, p0}, Lcom/facebook/ads/k$2;-><init>(Lcom/facebook/ads/k;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/k/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/k/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    iget-object v1, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    .line 8000
    iget-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    .line 9000
    iget v0, v0, Lcom/facebook/ads/internal/g/e;->i:I

    .line 11000
    :goto_4
    iput v0, v1, Lcom/facebook/ads/internal/k/a;->a:I

    .line 0
    iget-object v1, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    .line 12000
    iget-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    .line 13000
    iget v0, v0, Lcom/facebook/ads/internal/g/e;->j:I

    .line 15000
    :goto_5
    iput v0, v1, Lcom/facebook/ads/internal/k/a;->b:I

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k/a;->a()V

    new-instance v0, Lcom/facebook/ads/internal/b/ab;

    iget-object v1, p0, Lcom/facebook/ads/k;->h:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/k$d;

    invoke-direct {v2, p0, v6}, Lcom/facebook/ads/k$d;-><init>(Lcom/facebook/ads/k;B)V

    iget-object v3, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    iget-object v4, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/b/ab;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/i;Lcom/facebook/ads/internal/k/a;Lcom/facebook/ads/internal/b/ac;)V

    iput-object v0, p0, Lcom/facebook/ads/k;->u:Lcom/facebook/ads/internal/b/ab;

    iget-object v0, p0, Lcom/facebook/ads/k;->u:Lcom/facebook/ads/internal/b/ab;

    .line 16000
    iput-object v7, v0, Lcom/facebook/ads/internal/b/ab;->h:Ljava/util/List;

    .line 0
    sget-object v0, Lcom/facebook/ads/k;->g:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/k;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/facebook/ads/internal/k;

    invoke-direct {v0}, Lcom/facebook/ads/internal/k;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    iget-object v1, p0, Lcom/facebook/ads/k;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    iget-object v1, p0, Lcom/facebook/ads/k;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    iget-object v1, p0, Lcom/facebook/ads/k;->s:Lcom/facebook/ads/internal/k/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/k;->a(Lcom/facebook/ads/internal/k/a;)V

    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->r()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    iget-object v1, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/b/ac;->r()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/b/ac;->q()I

    move-result v2

    .line 17000
    iput v1, v0, Lcom/facebook/ads/internal/k;->a:I

    iput v2, v0, Lcom/facebook/ads/internal/k;->b:I

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k;->b()V

    .line 0
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    iget-object v1, p0, Lcom/facebook/ads/k;->o:Lcom/facebook/ads/internal/g/e;

    .line 18000
    iget-wide v2, v1, Lcom/facebook/ads/internal/g/e;->c:J

    .line 0
    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/k;->a(J)V

    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/k;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2000
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    .line 4000
    iget v2, v0, Lcom/facebook/ads/internal/g/e;->e:I

    goto/16 :goto_2

    .line 5000
    :cond_d
    iget-object v3, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v3

    .line 7000
    iget v3, v3, Lcom/facebook/ads/internal/g/e;->f:I

    goto/16 :goto_3

    .line 8000
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->h()I

    move-result v0

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    .line 10000
    iget v0, v0, Lcom/facebook/ads/internal/g/e;->i:I

    goto/16 :goto_4

    :cond_10
    move v0, v6

    .line 8000
    goto/16 :goto_4

    .line 12000
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->i()I

    move-result v0

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    .line 14000
    iget v0, v0, Lcom/facebook/ads/internal/g/e;->j:I

    goto/16 :goto_5

    .line 12000
    :cond_13
    const/16 v0, 0x3e8

    goto/16 :goto_5

    .line 0
    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/k;->z:Lcom/facebook/ads/internal/k;

    iget-object v1, p0, Lcom/facebook/ads/k;->m:Lcom/facebook/ads/internal/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v1

    .line 19000
    iget-wide v2, v1, Lcom/facebook/ads/internal/g/e;->c:J

    .line 0
    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/k;->a(J)V

    goto/16 :goto_6

    :cond_15
    move v3, v6

    goto/16 :goto_3

    :cond_16
    move v2, v4

    goto/16 :goto_2
.end method

.method public final a(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Lcom/facebook/ads/MediaViewVideoRenderer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/facebook/ads/b;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/facebook/ads/internal/view/hscroll/b;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/k;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/k;->k:Lcom/facebook/ads/internal/d/b;

    iget-object v1, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/b/ac;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final f()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/facebook/ads/p;->a:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->n()I

    move-result v0

    goto :goto_0
.end method

.method final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/k;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->p()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ac;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
