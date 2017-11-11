.class public final Lcom/google/android/gms/ads/formats/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/b$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:Lcom/google/android/gms/ads/h;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/b$a;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-boolean v0, p1, Lcom/google/android/gms/ads/formats/b$a;->a:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->a:Z

    .line 2000
    iget v0, p1, Lcom/google/android/gms/ads/formats/b$a;->b:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/ads/formats/b;->b:I

    .line 3000
    iget-boolean v0, p1, Lcom/google/android/gms/ads/formats/b$a;->c:Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->c:Z

    .line 4000
    iget v0, p1, Lcom/google/android/gms/ads/formats/b$a;->e:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/ads/formats/b;->d:I

    .line 5000
    iget-object v0, p1, Lcom/google/android/gms/ads/formats/b$a;->d:Lcom/google/android/gms/ads/h;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/ads/formats/b;->e:Lcom/google/android/gms/ads/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/b$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/b;-><init>(Lcom/google/android/gms/ads/formats/b$a;)V

    return-void
.end method
