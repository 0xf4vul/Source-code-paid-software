.class final Lcom/google/android/gms/internal/je$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Ljava/util/List;
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
.field final synthetic a:Lcom/google/android/gms/internal/iu;

.field final synthetic b:Lcom/google/android/gms/internal/ls;

.field final synthetic c:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$2;->c:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$2;->a:Lcom/google/android/gms/internal/iu;

    iput-object p3, p0, Lcom/google/android/gms/internal/je$2;->b:Lcom/google/android/gms/internal/ls;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/je$2;->c:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$2;->a:Lcom/google/android/gms/internal/iu;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/je$2;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ls;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/je$2;->c:Lcom/google/android/gms/internal/je;

    new-instance v1, Lcom/google/android/gms/internal/ju;

    sget-object v2, Lcom/google/android/gms/internal/jt;->b:Lcom/google/android/gms/internal/jt;

    iget-object v3, p0, Lcom/google/android/gms/internal/je$2;->a:Lcom/google/android/gms/internal/iu;

    iget-object v4, p0, Lcom/google/android/gms/internal/je$2;->b:Lcom/google/android/gms/internal/ls;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;)Ljava/util/List;

    move-result-object v0

    .line 0
    return-object v0
.end method
