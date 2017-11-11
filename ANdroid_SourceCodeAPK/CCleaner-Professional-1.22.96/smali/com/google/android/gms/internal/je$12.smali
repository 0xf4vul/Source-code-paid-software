.class final Lcom/google/android/gms/internal/je$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/km;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/iu;

.field final synthetic c:Lcom/google/android/gms/internal/ik;

.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/internal/ik;

.field final synthetic f:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;JLcom/google/android/gms/internal/ik;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/je$12;->f:Lcom/google/android/gms/internal/je;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/je$12;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/je$12;->b:Lcom/google/android/gms/internal/iu;

    iput-object p3, p0, Lcom/google/android/gms/internal/je$12;->c:Lcom/google/android/gms/internal/ik;

    iput-wide p4, p0, Lcom/google/android/gms/internal/je$12;->d:J

    iput-object p6, p0, Lcom/google/android/gms/internal/je$12;->e:Lcom/google/android/gms/internal/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/je$12;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/je$12;->f:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$12;->b:Lcom/google/android/gms/internal/iu;

    iget-object v2, p0, Lcom/google/android/gms/internal/je$12;->c:Lcom/google/android/gms/internal/ik;

    iget-wide v4, p0, Lcom/google/android/gms/internal/je$12;->d:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je$12;->f:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$12;->b:Lcom/google/android/gms/internal/iu;

    iget-object v2, p0, Lcom/google/android/gms/internal/je$12;->e:Lcom/google/android/gms/internal/ik;

    iget-wide v4, p0, Lcom/google/android/gms/internal/je$12;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2000
    sget-boolean v4, Lcom/google/android/gms/internal/jl;->e:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcom/google/android/gms/internal/jl;->c:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/internal/ji;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ji;-><init>(JLcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)Lcom/google/android/gms/internal/ik;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    iput-object v3, v0, Lcom/google/android/gms/internal/jl;->c:Ljava/lang/Long;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/je$12;->f:Lcom/google/android/gms/internal/je;

    new-instance v1, Lcom/google/android/gms/internal/jr;

    sget-object v2, Lcom/google/android/gms/internal/jt;->a:Lcom/google/android/gms/internal/jt;

    iget-object v3, p0, Lcom/google/android/gms/internal/je$12;->b:Lcom/google/android/gms/internal/iu;

    iget-object v4, p0, Lcom/google/android/gms/internal/je$12;->e:Lcom/google/android/gms/internal/ik;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/jr;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    .line 0
    return-object v0
.end method
