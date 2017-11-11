.class final Lcom/google/android/gms/internal/je$7;
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

.field final synthetic b:Lcom/google/android/gms/internal/iu;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/iu;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$7;->d:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$7;->a:Lcom/google/android/gms/internal/jf;

    iput-object p3, p0, Lcom/google/android/gms/internal/je$7;->b:Lcom/google/android/gms/internal/iu;

    iput-object p4, p0, Lcom/google/android/gms/internal/je$7;->c:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/je$7;->d:Lcom/google/android/gms/internal/je;

    iget-object v1, p0, Lcom/google/android/gms/internal/je$7;->a:Lcom/google/android/gms/internal/jf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/je$7;->b:Lcom/google/android/gms/internal/iu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/je$7;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/internal/ik;->b(Ljava/util/Map;)Lcom/google/android/gms/internal/ik;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/je$7;->d:Lcom/google/android/gms/internal/je;

    invoke-static {v3}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/je$7;->b:Lcom/google/android/gms/internal/iu;

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/jz;->b(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    new-instance v3, Lcom/google/android/gms/internal/jr;

    .line 3000
    iget-object v4, v0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 1000
    invoke-static {v4}, Lcom/google/android/gms/internal/jt;->a(Lcom/google/android/gms/internal/kq;)Lcom/google/android/gms/internal/jt;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/jr;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/je$7;->d:Lcom/google/android/gms/internal/je;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
