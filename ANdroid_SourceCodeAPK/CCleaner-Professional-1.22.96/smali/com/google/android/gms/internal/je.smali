.class public Lcom/google/android/gms/internal/je;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/je$b;,
        Lcom/google/android/gms/internal/je$c;,
        Lcom/google/android/gms/internal/je$d;,
        Lcom/google/android/gms/internal/je$a;
    }
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field a:Lcom/google/android/gms/internal/ke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Lcom/google/android/gms/internal/jd;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/jl;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/kr;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/gms/internal/jz;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            "Lcom/google/android/gms/internal/kr;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/kr;",
            "Lcom/google/android/gms/internal/jf;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/je$d;

.field private final i:Lcom/google/android/gms/internal/lc;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/je;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/je;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/jz;Lcom/google/android/gms/internal/je$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/je;->j:J

    invoke-static {}, Lcom/google/android/gms/internal/ke;->a()Lcom/google/android/gms/internal/ke;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    new-instance v0, Lcom/google/android/gms/internal/jl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/je;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/je;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/je;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/je;->h:Lcom/google/android/gms/internal/je$d;

    iput-object p2, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    const-string/jumbo v0, "SyncTree"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/je;->i:Lcom/google/android/gms/internal/lc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ke;)Lcom/google/android/gms/internal/ke;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/kr;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/kr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kr;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/lc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->i:Lcom/google/android/gms/internal/lc;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;)Ljava/util/List;
    .locals 4

    .prologue
    .line 0
    .line 11000
    iget-object v0, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jl;

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/jl;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/jm;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/js;)Ljava/util/List;
    .locals 3

    .prologue
    .line 12000
    .line 13000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 12000
    iget-object v0, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd;

    sget-boolean v2, Lcom/google/android/gms/internal/je;->e:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Missing sync point for query tag that we\'re tracking"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/jl;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/jm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/js;",
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Lcom/google/android/gms/internal/jd;",
            ">;",
            "Lcom/google/android/gms/internal/ls;",
            "Lcom/google/android/gms/internal/jm;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/js;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7000
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object p3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/js;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/js;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/js;

    move-result-object v5

    .line 8000
    iget-object v1, p2, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 0
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ke;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    if-eqz p3, :cond_4

    invoke-interface {p3, v4}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    :goto_1
    invoke-virtual {p4, v4}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/jm;

    move-result-object v4

    invoke-direct {p0, v5, v1, v2, v4}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ks;)V
    .locals 5

    .prologue
    .line 15000
    .line 16000
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 15000
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/je$c;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/je$c;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ks;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/je;->h:Lcom/google/android/gms/internal/je$d;

    invoke-static {p1}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v4

    invoke-interface {v3, v4, v1, v2, v2}, Lcom/google/android/gms/internal/je$d;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/je$a;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ke;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/google/android/gms/internal/je;->e:Z

    if-nez v1, :cond_1

    .line 17000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 15000
    check-cast v0, Lcom/google/android/gms/internal/jd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "If we\'re adding a query, it shouldn\'t be shadowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/je$10;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/je$10;-><init>(Lcom/google/android/gms/internal/je;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke$a;)V

    .line 0
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/je;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 19000
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kr;

    .line 20000
    iget-object v2, v0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v2

    .line 19000
    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/gms/internal/je;->e:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/je;->g:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 0
    :cond_2
    return-void
.end method

.method private a(Lcom/google/android/gms/internal/ke;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Lcom/google/android/gms/internal/jd;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->c()Lcom/google/android/gms/internal/ks;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4000
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ke;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/ke;Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;
    .locals 1

    .prologue
    .line 0
    .line 5000
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6000
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ke;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/ke;Ljava/util/List;)V

    .line 0
    return-object v0
.end method

.method private b(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/js;",
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Lcom/google/android/gms/internal/jd;",
            ">;",
            "Lcom/google/android/gms/internal/ls;",
            "Lcom/google/android/gms/internal/jm;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 9000
    iget-object v0, p2, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    move-object v6, v0

    .line 0
    check-cast v6, Lcom/google/android/gms/internal/jd;

    if-nez p3, :cond_1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object p3

    move-object v2, p3

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10000
    iget-object v7, p2, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/je$11;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/je$11;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/js;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/internal/hq$b;)V

    if-eqz v6, :cond_0

    invoke-virtual {v6, p1, p4, v2}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v5

    :cond_1
    move-object v2, p3

    goto :goto_0
.end method

.method private c(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jl;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/je;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jf;
    .locals 6

    .prologue
    .line 14000
    new-instance v0, Lcom/google/android/gms/internal/jf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/je;->j:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/je;->j:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/jf;-><init>(J)V

    .line 0
    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/je;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/je$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->h:Lcom/google/android/gms/internal/je$d;

    return-object v0
.end method


# virtual methods
.method public final a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/google/android/gms/internal/mm;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v1, Lcom/google/android/gms/internal/je$13;

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/je$13;-><init>(Lcom/google/android/gms/internal/je;ZJZLcom/google/android/gms/internal/mm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ip;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ip;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v1, Lcom/google/android/gms/internal/je$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/je$8;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ip;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ls;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v1, Lcom/google/android/gms/internal/je$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/je$2;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jf;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ls;",
            "Lcom/google/android/gms/internal/jf;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v1, Lcom/google/android/gms/internal/je$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/je$6;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;JZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ls;",
            "Lcom/google/android/gms/internal/ls;",
            "JZZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mv;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v1, Lcom/google/android/gms/internal/je$1;

    move-object v2, p0

    move/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/je$1;-><init>(Lcom/google/android/gms/internal/je;ZLcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;JLcom/google/android/gms/internal/ls;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/lx;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->c()Lcom/google/android/gms/internal/ks;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ks;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lx;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Ljava/util/List;Lcom/google/android/gms/internal/jf;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/lx;",
            ">;",
            "Lcom/google/android/gms/internal/jf;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/kr;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/google/android/gms/internal/je;->e:Z

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/iu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    .line 2000
    iget-object v2, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd;

    sget-boolean v2, Lcom/google/android/gms/internal/je;->e:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Missing sync point for query tag that we\'re tracking"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ks;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/gms/internal/je;->e:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Missing view for query tag that we\'re tracking"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ks;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lx;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jf;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method final a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kr;",
            "Lcom/google/android/gms/internal/ip;",
            "Lcom/google/firebase/database/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v1, Lcom/google/android/gms/internal/je$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/je$9;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ip;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ip;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ip;->a()Lcom/google/android/gms/internal/kr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
