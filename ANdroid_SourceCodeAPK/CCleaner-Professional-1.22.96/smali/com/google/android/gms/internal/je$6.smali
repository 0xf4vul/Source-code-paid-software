.class final Lcom/google/android/gms/internal/je$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jf;)Ljava/util/List;
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
.field final synthetic a:Lcom/google/android/gms/internal/jf;

.field final synthetic b:Lcom/google/android/gms/internal/iu;

.field final synthetic c:Lcom/google/android/gms/internal/ls;

.field final synthetic d:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$6;->d:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$6;->a:Lcom/google/android/gms/internal/jf;

    iput-object p3, p0, Lcom/google/android/gms/internal/je$6;->b:Lcom/google/android/gms/internal/iu;

    iput-object p4, p0, Lcom/google/android/gms/internal/je$6;->c:Lcom/google/android/gms/internal/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/je$6;->d:Lcom/google/android/gms/internal/je;

    iget-object v1, p0, Lcom/google/android/gms/internal/je$6;->a:Lcom/google/android/gms/internal/jf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/kr;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2000
    iget-object v0, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/je$6;->b:Lcom/google/android/gms/internal/iu;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/je$6;->d:Lcom/google/android/gms/internal/je;

    invoke-static {v3}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/je$6;->c:Lcom/google/android/gms/internal/ls;

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ls;)V

    new-instance v0, Lcom/google/android/gms/internal/ju;

    .line 3000
    iget-object v3, v1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 1000
    invoke-static {v3}, Lcom/google/android/gms/internal/jt;->a(Lcom/google/android/gms/internal/kq;)Lcom/google/android/gms/internal/jt;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/je$6;->c:Lcom/google/android/gms/internal/ls;

    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/je$6;->d:Lcom/google/android/gms/internal/je;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je$6;->b:Lcom/google/android/gms/internal/iu;

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
