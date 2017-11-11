.class final Lcom/google/android/gms/internal/je$3;
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/internal/iu;

.field final synthetic c:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;Ljava/util/Map;Lcom/google/android/gms/internal/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$3;->c:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$3;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/je$3;->b:Lcom/google/android/gms/internal/iu;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/je$3;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/ik;->b(Ljava/util/Map;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$3;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v1}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/je$3;->b:Lcom/google/android/gms/internal/iu;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/jz;->b(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/je$3;->c:Lcom/google/android/gms/internal/je;

    new-instance v2, Lcom/google/android/gms/internal/jr;

    sget-object v3, Lcom/google/android/gms/internal/jt;->b:Lcom/google/android/gms/internal/jt;

    iget-object v4, p0, Lcom/google/android/gms/internal/je$3;->b:Lcom/google/android/gms/internal/iu;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/jr;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    .line 0
    return-object v0
.end method
