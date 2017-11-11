.class public final Lcom/google/android/gms/internal/nq;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/gms/internal/or;

.field b:Lcom/google/android/gms/internal/og;

.field c:Lcom/google/android/gms/internal/no;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/nr",
            "<*>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/oj;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/oj;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:I

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/or;->a:Lcom/google/android/gms/internal/or;

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->a:Lcom/google/android/gms/internal/or;

    sget-object v0, Lcom/google/android/gms/internal/og;->a:Lcom/google/android/gms/internal/og;

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->b:Lcom/google/android/gms/internal/og;

    sget-object v0, Lcom/google/android/gms/internal/nn;->a:Lcom/google/android/gms/internal/nn;

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->c:Lcom/google/android/gms/internal/no;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->f:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/internal/nq;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/nq;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/nq;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/nq;
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->a(Z)V

    instance-of v0, p2, Lcom/google/android/gms/internal/nr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nq;->d:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/nr;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/internal/od;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nq;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/oh;->b(Lcom/google/android/gms/internal/pn;Ljava/lang/Object;)Lcom/google/android/gms/internal/oj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v1

    check-cast p2, Lcom/google/android/gms/internal/oi;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/oj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
