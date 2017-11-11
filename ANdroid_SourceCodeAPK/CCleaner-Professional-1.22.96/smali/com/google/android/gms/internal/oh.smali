.class final Lcom/google/android/gms/internal/oh;
.super Lcom/google/android/gms/internal/oi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/oh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/oi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/od;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/od",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/nu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nu",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/np;

.field private final d:Lcom/google/android/gms/internal/pn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/oj;

.field private f:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/od;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/oj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/od",
            "<TT;>;",
            "Lcom/google/android/gms/internal/nu",
            "<TT;>;",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;",
            "Lcom/google/android/gms/internal/oj;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/oi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/oh;->a:Lcom/google/android/gms/internal/od;

    iput-object p2, p0, Lcom/google/android/gms/internal/oh;->b:Lcom/google/android/gms/internal/nu;

    iput-object p3, p0, Lcom/google/android/gms/internal/oh;->c:Lcom/google/android/gms/internal/np;

    iput-object p4, p0, Lcom/google/android/gms/internal/oh;->d:Lcom/google/android/gms/internal/pn;

    iput-object p5, p0, Lcom/google/android/gms/internal/oh;->e:Lcom/google/android/gms/internal/oj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/od;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/oj;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/oh;-><init>(Lcom/google/android/gms/internal/od;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/oj;)V

    return-void
.end method

.method private a()Lcom/google/android/gms/internal/oi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/oh;->f:Lcom/google/android/gms/internal/oi;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oh;->c:Lcom/google/android/gms/internal/np;

    iget-object v1, p0, Lcom/google/android/gms/internal/oh;->e:Lcom/google/android/gms/internal/oj;

    iget-object v2, p0, Lcom/google/android/gms/internal/oh;->d:Lcom/google/android/gms/internal/pn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/oh;->f:Lcom/google/android/gms/internal/oi;

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/pn;Ljava/lang/Object;)Lcom/google/android/gms/internal/oj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pn",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/oj;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/oh$a;

    invoke-direct {v0, p1, p0, v1, v1}, Lcom/google/android/gms/internal/oh$a;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/pn;ZB)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/pn;Ljava/lang/Object;)Lcom/google/android/gms/internal/oj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pn",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/oj;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 5000
    iget-object v2, p0, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/oh$a;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/google/android/gms/internal/oh$a;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/pn;ZB)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/po;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/oh;->b:Lcom/google/android/gms/internal/nu;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oh;->a()Lcom/google/android/gms/internal/oi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ox;->a(Lcom/google/android/gms/internal/po;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    .line 1000
    instance-of v1, v0, Lcom/google/android/gms/internal/nx;

    .line 0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/oh;->b:Lcom/google/android/gms/internal/nu;

    iget-object v2, p0, Lcom/google/android/gms/internal/oh;->d:Lcom/google/android/gms/internal/pn;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 0
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/nv;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/internal/nz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/nz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/nz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pq;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/oh;->a:Lcom/google/android/gms/internal/od;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oh;->a()Lcom/google/android/gms/internal/oi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->e()Lcom/google/android/gms/internal/pq;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/oh;->a:Lcom/google/android/gms/internal/od;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/od;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ox;->a(Lcom/google/android/gms/internal/nv;Lcom/google/android/gms/internal/pq;)V

    goto :goto_0
.end method
