.class public abstract Lcom/google/android/gms/internal/hs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hq",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/gms/internal/hq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/gms/internal/hq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/hs;->b:Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    if-nez p4, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/hq;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/hq$a;->b:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/hq$a;->a:I

    goto :goto_0
.end method

.method private k()Lcom/google/android/gms/internal/hq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3000
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->f()Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->l()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    check-cast v0, Lcom/google/android/gms/internal/hs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->m()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    goto :goto_0
.end method

.method private l()Lcom/google/android/gms/internal/hs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hs",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->p()Lcom/google/android/gms/internal/hs;

    move-result-object v1

    .line 5000
    iget-object v0, v1, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->f()Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6000
    iget-object v0, v1, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/hs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->o()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->p()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private m()Lcom/google/android/gms/internal/hs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hs",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v0, v0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->o()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->p()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private n()Lcom/google/android/gms/internal/hs;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hs",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    sget v1, Lcom/google/android/gms/internal/hq$a;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v0, v0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/gms/internal/hs;->a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->a()I

    move-result v2

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/internal/hq;->a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hs;

    return-object v0
.end method

.method private o()Lcom/google/android/gms/internal/hs;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hs",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    sget v1, Lcom/google/android/gms/internal/hq$a;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v0, v0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/internal/hs;->a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->a()I

    move-result v2

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hq;->a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hs;

    return-object v0
.end method

.method private p()Lcom/google/android/gms/internal/hs;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hs",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-static {v1}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/hq;)I

    move-result v1

    invoke-interface {v0, v1, v3, v3}, Lcom/google/android/gms/internal/hq;->a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    iget-object v2, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-static {v2}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/hq;)I

    move-result v2

    invoke-interface {v1, v2, v3, v3}, Lcom/google/android/gms/internal/hq;->a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/hq;)I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/hs;->a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hs;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final synthetic a(ILcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hq;
    .locals 3

    .prologue
    .line 0
    .line 7000
    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/hs;->b:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    :cond_1
    sget v0, Lcom/google/android/gms/internal/hq$a;->a:I

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/hr;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/hr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ho;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/ho;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/hq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    :goto_0
    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->m()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/hq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v0, v0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->l()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    :goto_0
    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->m()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->o()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v0, v0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1000
    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->p()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    .line 1000
    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->f()Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/hs;->o()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->p()Lcom/google/android/gms/internal/hs;

    move-result-object p0

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->h()Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->e()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    check-cast v0, Lcom/google/android/gms/internal/hs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object p0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/hq;

    move-result-object v0

    invoke-virtual {p0, v3, v3, v3, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/internal/hs",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/internal/hq$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hq$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hq;->a(Lcom/google/android/gms/internal/hq$b;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/hq$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hq;->a(Lcom/google/android/gms/internal/hq$b;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/hq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/hq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/hq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->h()Lcom/google/android/gms/internal/hq;

    move-result-object p0

    goto :goto_0
.end method

.method public final i()Lcom/google/android/gms/internal/hq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hq",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->i()Lcom/google/android/gms/internal/hq;

    move-result-object p0

    goto :goto_0
.end method

.method public final j()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hq;->j()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
