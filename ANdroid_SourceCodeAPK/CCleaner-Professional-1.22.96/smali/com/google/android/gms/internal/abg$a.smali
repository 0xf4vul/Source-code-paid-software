.class final Lcom/google/android/gms/internal/abg$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/abg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/abf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/abf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/abg$a;->a:J

    iput-object p1, p0, Lcom/google/android/gms/internal/abg$a;->b:Lcom/google/android/gms/internal/abf;

    return-void
.end method
