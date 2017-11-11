.class final Lcom/google/android/gms/internal/je$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ke$a;


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
        "Lcom/google/android/gms/internal/ke$a",
        "<",
        "Lcom/google/android/gms/internal/jd;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/je;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$10;->a:Lcom/google/android/gms/internal/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 0
    check-cast p2, Lcom/google/android/gms/internal/jd;

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/jd;->c()Lcom/google/android/gms/internal/ks;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/internal/je$10;->a:Lcom/google/android/gms/internal/je;

    invoke-static {v1}, Lcom/google/android/gms/internal/je;->h(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/je$d;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/je$10;->a:Lcom/google/android/gms/internal/je;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/je$d;->a(Lcom/google/android/gms/internal/kr;)V

    :cond_0
    const/4 v0, 0x0

    .line 0
    return-object v0

    .line 1000
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ks;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/je$10;->a:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->h(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/je$d;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/je$10;->a:Lcom/google/android/gms/internal/je;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/je$d;->a(Lcom/google/android/gms/internal/kr;)V

    goto :goto_0
.end method
