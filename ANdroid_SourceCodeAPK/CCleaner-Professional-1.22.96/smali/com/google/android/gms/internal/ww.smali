.class final Lcom/google/android/gms/internal/ww;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ww$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ss;

.field b:Lcom/google/android/gms/internal/sy;

.field c:Lcom/google/android/gms/internal/zf;

.field d:Lcom/google/android/gms/internal/up;

.field e:Lcom/google/android/gms/internal/sr;

.field f:Lcom/google/android/gms/internal/abt;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/ads/internal/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->a:Lcom/google/android/gms/internal/ss;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ww$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ww;->a:Lcom/google/android/gms/internal/ss;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ww$a;-><init>(Lcom/google/android/gms/internal/ss;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/ss;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/sy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/sy;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/sy;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/zf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/zf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zf;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/up;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/up;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/up;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->e:Lcom/google/android/gms/internal/sr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->e:Lcom/google/android/gms/internal/sr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/sr;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->f:Lcom/google/android/gms/internal/abt;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->f:Lcom/google/android/gms/internal/abt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/abt;)V

    :cond_5
    return-void
.end method
