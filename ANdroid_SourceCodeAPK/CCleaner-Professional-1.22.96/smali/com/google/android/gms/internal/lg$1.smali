.class final Lcom/google/android/gms/internal/lg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lg;
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
        "Lcom/google/android/gms/internal/lf;",
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
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lf;

    check-cast p2, Lcom/google/android/gms/internal/lf;

    .line 1000
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/lf;->a(Lcom/google/android/gms/internal/lf;)I

    move-result v0

    .line 0
    return v0
.end method
