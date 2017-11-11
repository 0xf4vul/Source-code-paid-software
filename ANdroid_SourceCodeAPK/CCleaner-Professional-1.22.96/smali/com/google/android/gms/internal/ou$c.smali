.class abstract Lcom/google/android/gms/internal/ou$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/android/gms/internal/ou$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ou$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/gms/internal/ou$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ou$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/android/gms/internal/ou;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ou;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ou;->e:Lcom/google/android/gms/internal/ou$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/ou$d;->d:Lcom/google/android/gms/internal/ou$d;

    iput-object v0, p0, Lcom/google/android/gms/internal/ou$c;->b:Lcom/google/android/gms/internal/ou$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ou$c;->c:Lcom/google/android/gms/internal/ou$d;

    iget-object v0, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    iget v0, v0, Lcom/google/android/gms/internal/ou;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ou$c;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ou;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ou$c;-><init>(Lcom/google/android/gms/internal/ou;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ou$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ou$d",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ou$c;->b:Lcom/google/android/gms/internal/ou$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    iget-object v1, v1, Lcom/google/android/gms/internal/ou;->e:Lcom/google/android/gms/internal/ou$d;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    iget v1, v1, Lcom/google/android/gms/internal/ou;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ou$c;->d:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ou$d;->d:Lcom/google/android/gms/internal/ou$d;

    iput-object v1, p0, Lcom/google/android/gms/internal/ou$c;->b:Lcom/google/android/gms/internal/ou$d;

    iput-object v0, p0, Lcom/google/android/gms/internal/ou$c;->c:Lcom/google/android/gms/internal/ou$d;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ou$c;->b:Lcom/google/android/gms/internal/ou$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    iget-object v1, v1, Lcom/google/android/gms/internal/ou;->e:Lcom/google/android/gms/internal/ou$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ou$c;->c:Lcom/google/android/gms/internal/ou$d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    iget-object v1, p0, Lcom/google/android/gms/internal/ou$c;->c:Lcom/google/android/gms/internal/ou$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ou;->a(Lcom/google/android/gms/internal/ou$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ou$c;->c:Lcom/google/android/gms/internal/ou$d;

    iget-object v0, p0, Lcom/google/android/gms/internal/ou$c;->e:Lcom/google/android/gms/internal/ou;

    iget v0, v0, Lcom/google/android/gms/internal/ou;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ou$c;->d:I

    return-void
.end method
