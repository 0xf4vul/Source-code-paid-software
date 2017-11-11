.class public Lcom/google/android/gms/internal/ei;
.super Lcom/google/android/gms/internal/dl;


# static fields
.field private static final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ei;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dl;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ei;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ei;->a(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ei;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/ei;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected final b(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/bv$a;Lcom/google/android/gms/internal/bs$a;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fe;",
            "Lcom/google/android/gms/internal/bv$a;",
            "Lcom/google/android/gms/internal/bs$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/fe;->c:Ljava/util/concurrent/ExecutorService;

    .line 0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->p:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dl;->b(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/bv$a;Lcom/google/android/gms/internal/bs$a;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fe;->j()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dl;->b(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/bv$a;Lcom/google/android/gms/internal/bs$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/internal/hm;

    .line 2000
    const-string/jumbo v2, "/kx5MRqcn95qiPsrER7Pf1KGd7PBYuhpMEcvRTG/50mqLTSF+WRdejBEGdAcneo9"

    .line 3000
    const-string/jumbo v3, "IV2mOci6PItyVa4+aS/m3tdGY5jvNepAthMITbGHa+4="

    move-object v1, p1

    move-object v4, p2

    .line 0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hm;-><init>(Lcom/google/android/gms/internal/fe;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv$a;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    goto :goto_0
.end method
