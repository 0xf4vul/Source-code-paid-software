.class public final Lcom/d/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/d/a/t$d;,
        Lcom/d/a/t$a;,
        Lcom/d/a/t$b;,
        Lcom/d/a/t$e;,
        Lcom/d/a/t$f;,
        Lcom/d/a/t$c;
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Handler;

.field static b:Lcom/d/a/t;


# instance fields
.field final c:Lcom/d/a/t$f;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/d/a/y;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/Context;

.field final f:Lcom/d/a/i;

.field final g:Lcom/d/a/d;

.field final h:Lcom/d/a/aa;

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/d/a/h;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final l:Landroid/graphics/Bitmap$Config;

.field m:Z

.field volatile n:Z

.field o:Z

.field private final p:Lcom/d/a/t$c;

.field private final q:Lcom/d/a/t$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/d/a/t$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/d/a/t$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/d/a/t;->a:Landroid/os/Handler;

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/d/a/t;->b:Lcom/d/a/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/t$c;Lcom/d/a/t$f;Ljava/util/List;Lcom/d/a/aa;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/d/a/i;",
            "Lcom/d/a/d;",
            "Lcom/d/a/t$c;",
            "Lcom/d/a/t$f;",
            "Ljava/util/List",
            "<",
            "Lcom/d/a/y;",
            ">;",
            "Lcom/d/a/aa;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/d/a/t;->e:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/d/a/t;->f:Lcom/d/a/i;

    .line 168
    iput-object p3, p0, Lcom/d/a/t;->g:Lcom/d/a/d;

    .line 169
    iput-object p4, p0, Lcom/d/a/t;->p:Lcom/d/a/t$c;

    .line 170
    iput-object p5, p0, Lcom/d/a/t;->c:Lcom/d/a/t$f;

    .line 171
    iput-object p8, p0, Lcom/d/a/t;->l:Landroid/graphics/Bitmap$Config;

    .line 174
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x7

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    new-instance v0, Lcom/d/a/z;

    invoke-direct {v0, p1}, Lcom/d/a/z;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    if-eqz p6, :cond_0

    .line 183
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    :cond_0
    new-instance v0, Lcom/d/a/f;

    invoke-direct {v0, p1}, Lcom/d/a/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/d/a/o;

    invoke-direct {v0, p1}, Lcom/d/a/o;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/d/a/g;

    invoke-direct {v0, p1}, Lcom/d/a/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/d/a/b;

    invoke-direct {v0, p1}, Lcom/d/a/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/d/a/k;

    invoke-direct {v0, p1}, Lcom/d/a/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/d/a/r;

    iget-object v2, p2, Lcom/d/a/i;->d:Lcom/d/a/j;

    invoke-direct {v0, v2, p7}, Lcom/d/a/r;-><init>(Lcom/d/a/j;Lcom/d/a/aa;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/t;->d:Ljava/util/List;

    .line 193
    iput-object p7, p0, Lcom/d/a/t;->h:Lcom/d/a/aa;

    .line 194
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/d/a/t;->i:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/d/a/t;->j:Ljava/util/Map;

    .line 196
    iput-boolean p9, p0, Lcom/d/a/t;->m:Z

    .line 197
    iput-boolean p10, p0, Lcom/d/a/t;->n:Z

    .line 198
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/d/a/t;->k:Ljava/lang/ref/ReferenceQueue;

    .line 199
    new-instance v0, Lcom/d/a/t$b;

    iget-object v1, p0, Lcom/d/a/t;->k:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lcom/d/a/t;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/d/a/t$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/d/a/t;->q:Lcom/d/a/t$b;

    .line 200
    iget-object v0, p0, Lcom/d/a/t;->q:Lcom/d/a/t$b;

    invoke-virtual {v0}, Lcom/d/a/t$b;->start()V

    .line 201
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/d/a/t;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/d/a/t;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/d/a/t;->g:Lcom/d/a/d;

    invoke-interface {v0, p1}, Lcom/d/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_0

    .line 485
    iget-object v1, p0, Lcom/d/a/t;->h:Lcom/d/a/aa;

    invoke-virtual {v1}, Lcom/d/a/aa;->a()V

    .line 489
    :goto_0
    return-object v0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/d/a/t;->h:Lcom/d/a/aa;

    .line 3075
    iget-object v1, v1, Lcom/d/a/aa;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method final a(Landroid/graphics/Bitmap;Lcom/d/a/t$d;Lcom/d/a/a;)V
    .locals 5

    .prologue
    .line 547
    .line 3085
    iget-boolean v0, p3, Lcom/d/a/a;->l:Z

    .line 547
    if-eqz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 3089
    :cond_1
    iget-boolean v0, p3, Lcom/d/a/a;->k:Z

    .line 550
    if-nez v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/d/a/t;->i:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_2
    if-eqz p1, :cond_4

    .line 554
    if-nez p2, :cond_3

    .line 555
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 557
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/d/a/a;->a(Landroid/graphics/Bitmap;Lcom/d/a/t$d;)V

    .line 558
    iget-boolean v0, p0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_0

    .line 559
    const-string/jumbo v0, "Main"

    const-string/jumbo v1, "completed"

    iget-object v2, p3, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_4
    invoke-virtual {p3}, Lcom/d/a/a;->a()V

    .line 563
    iget-boolean v0, p0, Lcom/d/a/t;->n:Z

    if-eqz v0, :cond_0

    .line 564
    const-string/jumbo v0, "Main"

    const-string/jumbo v1, "errored"

    iget-object v2, p3, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/d/a/a;)V
    .locals 3

    .prologue
    .line 469
    invoke-virtual {p1}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/d/a/t;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 472
    invoke-virtual {p0, v0}, Lcom/d/a/t;->a(Ljava/lang/Object;)V

    .line 473
    iget-object v1, p0, Lcom/d/a/t;->i:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/d/a/t;->f:Lcom/d/a/i;

    .line 2137
    iget-object v1, v0, Lcom/d/a/i;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/d/a/i;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 570
    invoke-static {}, Lcom/d/a/ae;->a()V

    .line 571
    iget-object v0, p0, Lcom/d/a/t;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a;

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/d/a/a;->b()V

    .line 574
    iget-object v1, p0, Lcom/d/a/t;->f:Lcom/d/a/i;

    .line 3141
    iget-object v2, v1, Lcom/d/a/i;->i:Landroid/os/Handler;

    iget-object v1, v1, Lcom/d/a/i;->i:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 577
    check-cast p1, Landroid/widget/ImageView;

    .line 578
    iget-object v0, p0, Lcom/d/a/t;->j:Ljava/util/Map;

    .line 579
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/h;

    .line 580
    if-eqz v0, :cond_1

    .line 4064
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/d/a/h;->c:Lcom/d/a/e;

    .line 4065
    iget-object v1, v0, Lcom/d/a/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4066
    if-eqz v1, :cond_1

    .line 4069
    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 4070
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4073
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 584
    :cond_1
    return-void
.end method
