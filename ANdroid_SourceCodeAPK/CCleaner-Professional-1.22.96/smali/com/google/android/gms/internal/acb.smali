.class public final Lcom/google/android/gms/internal/acb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/acb$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/acb$a;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/acb$a;->a:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/acb;->a:Ljava/lang/String;

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/acb$a;->b:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/acb;->b:Ljava/lang/String;

    .line 3000
    iget v0, p1, Lcom/google/android/gms/internal/acb$a;->c:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/acb;->c:I

    .line 4000
    iget-wide v0, p1, Lcom/google/android/gms/internal/acb$a;->d:J

    .line 0
    iput-wide v0, p0, Lcom/google/android/gms/internal/acb;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/acb$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/acb;-><init>(Lcom/google/android/gms/internal/acb$a;)V

    return-void
.end method
