.class final Lcom/google/android/gms/internal/je$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;JZZ)Ljava/util/List;
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

.field final synthetic c:Lcom/google/android/gms/internal/ls;

.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/internal/ls;

.field final synthetic f:Z

.field final synthetic g:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;ZLcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;JLcom/google/android/gms/internal/ls;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/je$1;->g:Lcom/google/android/gms/internal/je;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/je$1;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/je$1;->b:Lcom/google/android/gms/internal/iu;

    iput-object p4, p0, Lcom/google/android/gms/internal/je$1;->c:Lcom/google/android/gms/internal/ls;

    iput-wide p5, p0, Lcom/google/android/gms/internal/je$1;->d:J

    iput-object p7, p0, Lcom/google/android/gms/internal/je$1;->e:Lcom/google/android/gms/internal/ls;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/je$1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/je$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/je$1;->g:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$1;->b:Lcom/google/android/gms/internal/iu;

    iget-object v2, p0, Lcom/google/android/gms/internal/je$1;->c:Lcom/google/android/gms/internal/ls;

    iget-wide v4, p0, Lcom/google/android/gms/internal/je$1;->d:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je$1;->g:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->c(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jl;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/je$1;->b:Lcom/google/android/gms/internal/iu;

    iget-object v5, p0, Lcom/google/android/gms/internal/je$1;->e:Lcom/google/android/gms/internal/ls;

    iget-wide v2, p0, Lcom/google/android/gms/internal/je$1;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-boolean v6, p0, Lcom/google/android/gms/internal/je$1;->f:Z

    .line 2000
    sget-boolean v1, Lcom/google/android/gms/internal/jl;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v0, Lcom/google/android/gms/internal/jl;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v8, v0, Lcom/google/android/gms/internal/jl;->b:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ji;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ji;-><init>(JLcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Z)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ik;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    :cond_2
    iput-object v7, v0, Lcom/google/android/gms/internal/jl;->c:Ljava/lang/Long;

    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/je$1;->f:Z

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/je$1;->g:Lcom/google/android/gms/internal/je;

    new-instance v1, Lcom/google/android/gms/internal/ju;

    sget-object v2, Lcom/google/android/gms/internal/jt;->a:Lcom/google/android/gms/internal/jt;

    iget-object v3, p0, Lcom/google/android/gms/internal/je$1;->b:Lcom/google/android/gms/internal/iu;

    iget-object v4, p0, Lcom/google/android/gms/internal/je$1;->e:Lcom/google/android/gms/internal/ls;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
