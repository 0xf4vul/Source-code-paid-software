.class public Lcom/google/android/gms/internal/ik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/android/gms/internal/iu;",
        "Lcom/google/android/gms/internal/ls;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic b:Z

.field private static final c:Lcom/google/android/gms/internal/ik;


# instance fields
.field final a:Lcom/google/android/gms/internal/ke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Lcom/google/android/gms/internal/ls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ik;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ik;->b:Z

    new-instance v0, Lcom/google/android/gms/internal/ik;

    new-instance v1, Lcom/google/android/gms/internal/ke;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ke;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    sput-object v0, Lcom/google/android/gms/internal/ik;->c:Lcom/google/android/gms/internal/ik;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ke;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Lcom/google/android/gms/internal/ls;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ik;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ik;->c:Lcom/google/android/gms/internal/ik;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lcom/google/android/gms/internal/ik;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/ik;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/ke;->a()Lcom/google/android/gms/internal/ke;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lcom/google/android/gms/internal/ke;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 2000
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v5

    .line 1000
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    .line 0
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ke;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/iu;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ik;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Lcom/google/android/gms/internal/ls;",
            ">;",
            "Lcom/google/android/gms/internal/ls;",
            ")",
            "Lcom/google/android/gms/internal/ls;"
        }
    .end annotation

    .prologue
    .line 0
    .line 5000
    iget-object v0, p2, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    if-eqz v0, :cond_1

    .line 6000
    iget-object v0, p2, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/ls;

    invoke-interface {p3, p1, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object p3

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    const/4 v0, 0x0

    .line 7000
    iget-object v1, p2, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/hk;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ke;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v0, Lcom/google/android/gms/internal/ik;->b:Z

    if-nez v0, :cond_2

    .line 8000
    iget-object v0, v1, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Priority writes must always be leaf nodes"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 9000
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/ls;

    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object p3

    goto :goto_1

    :cond_4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/lf;->c()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-interface {p3, v0, v2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object p3

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Lcom/google/android/gms/internal/ik;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ls;",
            ">;)",
            "Lcom/google/android/gms/internal/ik;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ke;->a()Lcom/google/android/gms/internal/ke;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/gms/internal/ke;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ls;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ke;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iu;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ik;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ik;->c:Lcom/google/android/gms/internal/ik;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-static {}, Lcom/google/android/gms/internal/ke;->a()Lcom/google/android/gms/internal/ke;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;)Lcom/google/android/gms/internal/ke;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/ik;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)Lcom/google/android/gms/internal/ik;
    .locals 2

    iget-object v0, p2, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    new-instance v1, Lcom/google/android/gms/internal/ik$1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ik$1;-><init>(Lcom/google/android/gms/internal/iu;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ke;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ke$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ik;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ik;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ik;

    new-instance v0, Lcom/google/android/gms/internal/ke;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ke;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ls;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->g()Lcom/google/android/gms/internal/lf;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->f()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-interface {v0, v2, p2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/ik;

    iget-object v3, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;)Lcom/google/android/gms/internal/ke;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ke;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ke;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/ik;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ls;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/ls;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/iu;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ik;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ls;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/lf;",
            "Lcom/google/android/gms/internal/ik;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/lf;

    new-instance v4, Lcom/google/android/gms/internal/ik;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ke;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ik;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ik;

    new-instance v1, Lcom/google/android/gms/internal/ke;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ke;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ik;

    iget-object v1, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ke;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ke;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    new-instance v2, Lcom/google/android/gms/internal/ik$2;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ik$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ik;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ik;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ik;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ik;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ls;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ke;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ik;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "CompoundWrite{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
