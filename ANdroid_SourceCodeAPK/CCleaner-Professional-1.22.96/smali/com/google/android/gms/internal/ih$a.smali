.class public final Lcom/google/android/gms/internal/ih$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:J

.field c:D

.field d:J

.field e:D

.field final f:Lcom/google/android/gms/internal/lc;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ld;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih$a;->b:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih$a;->c:D

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih$a;->d:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih$a;->e:D

    iput-object p1, p0, Lcom/google/android/gms/internal/ih$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/lc;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/lc;-><init>(Lcom/google/android/gms/internal/ld;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ih$a;->f:Lcom/google/android/gms/internal/lc;

    return-void
.end method
