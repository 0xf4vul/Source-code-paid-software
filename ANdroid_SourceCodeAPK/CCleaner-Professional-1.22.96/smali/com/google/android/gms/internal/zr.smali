.class public final Lcom/google/android/gms/internal/zr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zr$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zr$a;Lcom/google/android/gms/internal/ul;)Lcom/google/android/gms/internal/adl;
    .locals 7

    .prologue
    .line 0
    iget-object v0, p2, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->h:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zv;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zr$a;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/aer;)V

    :goto_0
    const-string/jumbo v2, "AdRenderer: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/adl;->c()Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->t:Z

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/google/android/gms/ads/internal/r;

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->t:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/r;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zw;

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/ads/internal/r;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zr$a;Lcom/google/android/gms/internal/ul;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zt;

    invoke-direct {v0, p2, p6}, Lcom/google/android/gms/internal/zt;-><init>(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/zr$a;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ud;->ao:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2000
    invoke-static {}, Lcom/google/android/gms/common/util/j;->e()Z

    move-result v0

    .line 0
    if-nez v0, :cond_4

    if-eqz p4, :cond_4

    invoke-interface {p4}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zu;

    invoke-direct {v0, p0, p2, p4, p6}, Lcom/google/android/gms/internal/zu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/zr$a;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zs;

    invoke-direct {v0, p0, p2, p4, p6}, Lcom/google/android/gms/internal/zs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/zr$a;)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
