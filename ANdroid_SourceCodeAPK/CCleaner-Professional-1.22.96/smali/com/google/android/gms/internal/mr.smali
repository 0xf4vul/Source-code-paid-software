.class public final Lcom/google/android/gms/internal/mr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/mm;


# instance fields
.field a:J

.field private final b:Lcom/google/android/gms/internal/mm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mm;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/mr;->a:J

    iput-object p1, p0, Lcom/google/android/gms/internal/mr;->b:Lcom/google/android/gms/internal/mm;

    iput-wide v0, p0, Lcom/google/android/gms/internal/mr;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->b:Lcom/google/android/gms/internal/mm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mm;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/mr;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method
