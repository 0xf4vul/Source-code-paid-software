.class public final Lcom/google/android/gms/internal/bg$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bg$a$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzadk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bg$a$a;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-wide v0, p1, Lcom/google/android/gms/internal/bg$a$a;->a:J

    .line 0
    iput-wide v0, p0, Lcom/google/android/gms/internal/bg$a;->a:J

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/bg$a$a;->b:Ljava/util/Map;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/bg$a;->b:Ljava/util/Map;

    .line 3000
    iget v0, p1, Lcom/google/android/gms/internal/bg$a$a;->c:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/bg$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bg$a;->f:Ljava/util/List;

    .line 4000
    iget v0, p1, Lcom/google/android/gms/internal/bg$a$a;->d:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/bg$a;->d:I

    .line 5000
    iget v0, p1, Lcom/google/android/gms/internal/bg$a$a;->e:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/bg$a;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/bg$a$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bg$a;-><init>(Lcom/google/android/gms/internal/bg$a$a;)V

    return-void
.end method
