.class final Lcom/google/firebase/database/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/k;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/firebase/database/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/k;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/database/k$4;->b:Lcom/google/firebase/database/k;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/k$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/k$4;->b:Lcom/google/firebase/database/k;

    iget-object v0, v0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    iget-object v1, p0, Lcom/google/firebase/database/k$4;->b:Lcom/google/firebase/database/k;

    invoke-virtual {v1}, Lcom/google/firebase/database/k;->f()Lcom/google/android/gms/internal/kr;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/firebase/database/k$4;->a:Z

    .line 1000
    sget-boolean v3, Lcom/google/android/gms/internal/iw;->h:Z

    if-nez v3, :cond_0

    .line 2000
    iget-object v3, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    invoke-virtual {v3}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3000
    iget-object v3, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    invoke-virtual {v3}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/il;->a:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    .line 4000
    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/je;->c:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/je$b;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/je$b;-><init>(Lcom/google/android/gms/internal/kr;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/gms/internal/je;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/je;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/je$b;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/je$b;-><init>(Lcom/google/android/gms/internal/kr;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/gms/internal/je;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
