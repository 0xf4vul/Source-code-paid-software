.class public final Lcom/google/android/gms/internal/pc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/oq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/oq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pc;->a:Lcom/google/android/gms/internal/oq;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/ok;)Lcom/google/android/gms/internal/oi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/oq;",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/pn",
            "<*>;",
            "Lcom/google/android/gms/internal/ok;",
            ")",
            "Lcom/google/android/gms/internal/oi",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/android/gms/internal/ok;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/ov;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ov;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oi;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/oj;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/ov;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ov;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/oj;->a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p2, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    const-class v1, Lcom/google/android/gms/internal/ok;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ok;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pc;->a:Lcom/google/android/gms/internal/oq;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/pc;->a(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/ok;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    goto :goto_0
.end method
