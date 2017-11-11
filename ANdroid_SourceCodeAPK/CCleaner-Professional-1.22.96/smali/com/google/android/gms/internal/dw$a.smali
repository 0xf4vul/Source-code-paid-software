.class final Lcom/google/android/gms/internal/dw$a;
.super Lcom/google/android/gms/measurement/AppMeasurement$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dw$a;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurement$f;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/dw$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/dw$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/dw$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/dw$a;->c:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/dw$a;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/dw$a;->d:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/dw$a;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw$a;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurement$f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dw$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/dw$a;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/dw$a;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw$a;->a:Z

    return-void
.end method
