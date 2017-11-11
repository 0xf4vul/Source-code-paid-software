.class public final Lcom/google/firebase/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/a/a$c;,
        Lcom/google/firebase/a/a$b;,
        Lcom/google/firebase/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/dq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/a/a;->a:Lcom/google/android/gms/internal/dq;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/firebase/a/a;->a:Lcom/google/android/gms/internal/dq;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/dq;->f:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ee;->d(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->z()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    const-string/jumbo v4, "_ev"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "app"

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/dv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
