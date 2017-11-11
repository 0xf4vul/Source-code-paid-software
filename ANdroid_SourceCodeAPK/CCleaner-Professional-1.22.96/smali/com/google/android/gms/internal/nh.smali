.class public final Lcom/google/android/gms/internal/nh;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nh;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nh;-><init>(C)V

    return-void
.end method

.method private constructor <init>(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nh;-><init>(S)V

    return-void
.end method

.method private constructor <init>(S)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/nh;->a:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/nh;->b:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/nh;->d:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/nh;->e:J

    return-void
.end method
