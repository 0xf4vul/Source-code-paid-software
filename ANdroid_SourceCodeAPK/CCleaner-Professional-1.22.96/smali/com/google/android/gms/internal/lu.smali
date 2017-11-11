.class public final Lcom/google/android/gms/internal/lu;
.super Lcom/google/android/gms/internal/ll;


# instance fields
.field private final a:Lcom/google/android/gms/internal/iu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iu;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ll;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lr;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/lk;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/lr;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/internal/ls;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/lr;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    sget-object v2, Lcom/google/android/gms/internal/ls;->e:Lcom/google/android/gms/internal/lg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lk;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/lr;

    invoke-static {}, Lcom/google/android/gms/internal/lf;->b()Lcom/google/android/gms/internal/lf;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lr;

    check-cast p2, Lcom/google/android/gms/internal/lr;

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 3000
    iget-object v1, p2, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ls;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4000
    iget-object v0, p1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 5000
    iget-object v1, p2, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lf;->a(Lcom/google/android/gms/internal/lf;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/lu;

    iget-object v2, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    iget-object v3, p1, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/iu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->hashCode()I

    move-result v0

    return v0
.end method
