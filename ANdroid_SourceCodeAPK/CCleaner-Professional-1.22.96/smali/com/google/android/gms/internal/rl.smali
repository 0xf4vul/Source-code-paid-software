.class public final Lcom/google/android/gms/internal/rl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final d:F

.field final e:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/rl;->a:F

    iput p2, p0, Lcom/google/android/gms/internal/rl;->b:F

    add-float v0, p1, p3

    iput v0, p0, Lcom/google/android/gms/internal/rl;->c:F

    add-float v0, p2, p4

    iput v0, p0, Lcom/google/android/gms/internal/rl;->d:F

    iput p5, p0, Lcom/google/android/gms/internal/rl;->e:I

    return-void
.end method
