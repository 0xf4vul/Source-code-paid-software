.class final Lcom/google/android/gms/internal/kd$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/jv;)Lcom/google/android/gms/internal/kb;
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
        "Lcom/google/android/gms/internal/kc;",
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
    check-cast p1, Lcom/google/android/gms/internal/kc;

    check-cast p2, Lcom/google/android/gms/internal/kc;

    .line 1000
    iget-wide v0, p1, Lcom/google/android/gms/internal/kc;->c:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/kc;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mv;->a(JJ)I

    move-result v0

    .line 0
    return v0
.end method
