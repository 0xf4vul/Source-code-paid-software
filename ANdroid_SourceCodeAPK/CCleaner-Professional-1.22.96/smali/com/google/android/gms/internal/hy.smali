.class public final Lcom/google/android/gms/internal/hy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lcom/google/android/gms/internal/hx;

.field final c:Lcom/google/android/gms/internal/ld;

.field final d:Z

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/internal/hx;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/ld;

    iput-object p2, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/hx;

    iput-object p3, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/hy;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/hy;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/hy;->f:Ljava/lang/String;

    return-void
.end method
