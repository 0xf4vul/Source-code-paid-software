.class final Lcom/google/android/gms/internal/lh$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/lh$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ls;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mp;->a(Lcom/google/android/gms/internal/ls;)J

    move-result-wide v0

    const-wide/16 v2, 0x200

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/lh$b;->a:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lh$a;)Z
    .locals 4

    .prologue
    .line 0
    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/lh$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 0
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/lh$b;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lh$a;->b()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lh$a;->b()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->g()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/lf;->c()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
