.class public final Lcom/google/android/gms/internal/pf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/pf$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/oq;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/oq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pf;->a:Lcom/google/android/gms/internal/oq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pf;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/pf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pf;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 8
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 0
    .line 1000
    iget-object v0, p2, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 2000
    iget-object v1, p2, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/op;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/op;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    .line 3000
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/pm;->f:Lcom/google/android/gms/internal/oi;

    .line 0
    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/pf;->a:Lcom/google/android/gms/internal/oq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/ov;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/pf$a;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/pf$a;-><init>(Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/np;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/oi;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ov;)V

    goto :goto_0

    .line 3000
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/pn;->a(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/pn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v4

    goto :goto_1
.end method
