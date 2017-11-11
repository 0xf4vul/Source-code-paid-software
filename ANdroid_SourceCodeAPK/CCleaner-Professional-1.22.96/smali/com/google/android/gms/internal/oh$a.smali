.class final Lcom/google/android/gms/internal/oh$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/oh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/pn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/pn",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/od;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/od",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/nu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nu",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/pn;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pn",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/od;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/od;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/oh$a;->d:Lcom/google/android/gms/internal/od;

    instance-of v0, p1, Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/nu;

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/oh$a;->e:Lcom/google/android/gms/internal/nu;

    iget-object v0, p0, Lcom/google/android/gms/internal/oh$a;->d:Lcom/google/android/gms/internal/od;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oh$a;->e:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->a(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/oh$a;->a:Lcom/google/android/gms/internal/pn;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/oh$a;->b:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/oh$a;->c:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/pn;ZB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/oh$a;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/pn;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 7
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
    const/4 v6, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/oh$a;->a:Lcom/google/android/gms/internal/pn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/oh$a;->a:Lcom/google/android/gms/internal/pn;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/pn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oh$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/oh$a;->a:Lcom/google/android/gms/internal/pn;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/pn;->b:Ljava/lang/reflect/Type;

    .line 2000
    iget-object v1, p2, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/oh;

    iget-object v1, p0, Lcom/google/android/gms/internal/oh$a;->d:Lcom/google/android/gms/internal/od;

    iget-object v2, p0, Lcom/google/android/gms/internal/oh$a;->e:Lcom/google/android/gms/internal/nu;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/oh;-><init>(Lcom/google/android/gms/internal/od;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/oj;B)V

    :goto_1
    return-object v0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/oh$a;->c:Ljava/lang/Class;

    .line 3000
    iget-object v1, p2, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
