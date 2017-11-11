.class public final Lcom/google/android/gms/internal/ace;
.super Lcom/google/android/gms/internal/aci$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field volatile a:Lcom/google/android/gms/internal/acc;

.field volatile b:Lcom/google/android/gms/internal/acf;

.field private volatile c:Lcom/google/android/gms/internal/acd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/acd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aci$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->a:Lcom/google/android/gms/internal/acc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->a:Lcom/google/android/gms/internal/acc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/acc;->e()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/a/a;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->a:Lcom/google/android/gms/internal/acc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->a:Lcom/google/android/gms/internal/acc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/acc;->f()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzoo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/acd;->b(Lcom/google/android/gms/internal/zzoo;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->b:Lcom/google/android/gms/internal/acf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->b:Lcom/google/android/gms/internal/acf;

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/acf;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/a/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->b:Lcom/google/android/gms/internal/acf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->b:Lcom/google/android/gms/internal/acf;

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/acf;->a(I)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/acd;->M()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/acd;->N()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/acd;->O()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/acd;->P()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ace;->c:Lcom/google/android/gms/internal/acd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/acd;->Q()V

    :cond_0
    return-void
.end method
