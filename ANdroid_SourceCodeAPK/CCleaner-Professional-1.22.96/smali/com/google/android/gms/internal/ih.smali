.class public final Lcom/google/android/gms/internal/ih;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ih$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field final b:Lcom/google/android/gms/internal/lc;

.field final c:J

.field final d:J

.field final e:D

.field final f:D

.field final g:Ljava/util/Random;

.field h:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field i:J

.field j:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/lc;JJDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ih;->g:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ih;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ih;->b:Lcom/google/android/gms/internal/lc;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ih;->c:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ih;->d:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ih;->f:D

    iput-wide p9, p0, Lcom/google/android/gms/internal/ih;->e:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/lc;JJDDB)V
    .locals 1

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/ih;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/lc;JJDD)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ih;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ih;->i:J

    return-void
.end method
