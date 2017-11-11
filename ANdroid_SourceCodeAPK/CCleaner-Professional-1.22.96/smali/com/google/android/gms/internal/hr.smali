.class public final Lcom/google/android/gms/internal/hr;
.super Lcom/google/android/gms/internal/hs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/hs",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/hp;->a()Lcom/google/android/gms/internal/hp;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/hs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    return-void
.end method

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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/hs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/hq$a;->a:I

    return v0
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)Lcom/google/android/gms/internal/hs;
    .locals 1
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

    .prologue
    .line 0
    if-nez p1, :cond_0

    .line 1000
    iget-object p1, p0, Lcom/google/android/gms/internal/hs;->a:Ljava/lang/Object;

    .line 0
    :cond_0
    if-nez p2, :cond_1

    .line 2000
    iget-object p2, p0, Lcom/google/android/gms/internal/hs;->b:Ljava/lang/Object;

    .line 0
    :cond_1
    if-nez p3, :cond_2

    .line 3000
    iget-object p3, p0, Lcom/google/android/gms/internal/hs;->c:Lcom/google/android/gms/internal/hq;

    .line 0
    :cond_2
    if-nez p4, :cond_3

    .line 4000
    iget-object p4, p0, Lcom/google/android/gms/internal/hs;->d:Lcom/google/android/gms/internal/hq;

    .line 0
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/hr;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/hr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/hq;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
