.class final Lcom/google/android/gms/internal/je$5;
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
.field final synthetic a:Lcom/google/android/gms/internal/jf;

.field final synthetic b:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$5;->b:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$5;->a:Lcom/google/android/gms/internal/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/je$5;->b:Lcom/google/android/gms/internal/je;

    iget-object v1, p0, Lcom/google/android/gms/internal/je$5;->a:Lcom/google/android/gms/internal/jf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$5;->b:Lcom/google/android/gms/internal/je;

    invoke-static {v1}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/jz;->d(Lcom/google/android/gms/internal/kr;)V

    new-instance v1, Lcom/google/android/gms/internal/jq;

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 1000
    invoke-static {v2}, Lcom/google/android/gms/internal/jt;->a(Lcom/google/android/gms/internal/kq;)Lcom/google/android/gms/internal/jt;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/jq;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/je$5;->b:Lcom/google/android/gms/internal/je;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
