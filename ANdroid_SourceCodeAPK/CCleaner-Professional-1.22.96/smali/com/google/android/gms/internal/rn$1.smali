.class final Lcom/google/android/gms/internal/rn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rn;->a(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/rq$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/rq$a;

    check-cast p2, Lcom/google/android/gms/internal/rq$a;

    .line 1000
    iget v0, p1, Lcom/google/android/gms/internal/rq$a;->c:I

    iget v1, p2, Lcom/google/android/gms/internal/rq$a;->c:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/rq$a;->a:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/rq$a;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 0
    goto :goto_0
.end method
