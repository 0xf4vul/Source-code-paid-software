.class final Lcom/google/android/gms/internal/je$11;
.super Lcom/google/android/gms/internal/hq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hq$b",
        "<",
        "Lcom/google/android/gms/internal/lf;",
        "Lcom/google/android/gms/internal/ke",
        "<",
        "Lcom/google/android/gms/internal/jd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ls;

.field final synthetic b:Lcom/google/android/gms/internal/jm;

.field final synthetic c:Lcom/google/android/gms/internal/js;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/js;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$11;->e:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$11;->a:Lcom/google/android/gms/internal/ls;

    iput-object p3, p0, Lcom/google/android/gms/internal/je$11;->b:Lcom/google/android/gms/internal/jm;

    iput-object p4, p0, Lcom/google/android/gms/internal/je$11;->c:Lcom/google/android/gms/internal/js;

    iput-object p5, p0, Lcom/google/android/gms/internal/je$11;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hq$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lf;

    check-cast p2, Lcom/google/android/gms/internal/ke;

    .line 1000
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$11;->a:Lcom/google/android/gms/internal/ls;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/je$11;->a:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/je$11;->b:Lcom/google/android/gms/internal/jm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/jm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/je$11;->c:Lcom/google/android/gms/internal/js;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/js;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/js;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/je$11;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/je$11;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v4, v2, p2, v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/js;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 0
    :cond_1
    return-void
.end method
