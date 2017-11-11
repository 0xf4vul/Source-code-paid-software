.class public final Lcom/google/android/gms/internal/pa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/pa$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/oq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/oq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 4
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
    iget-object v0, p2, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 2000
    iget-object v1, p2, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/op;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/ov;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/pa$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/pa$a;-><init>(Lcom/google/android/gms/internal/np;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ov;)V

    goto :goto_0
.end method
