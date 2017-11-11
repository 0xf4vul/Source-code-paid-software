.class public final Lcom/google/android/gms/internal/es;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/es$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/es;


# instance fields
.field final b:Z

.field final c:Z

.field final d:Ljava/lang/String;

.field final e:Z

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Ljava/lang/Long;

.field final i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/es$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/es$a;-><init>()V

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/es;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/es;-><init>(B)V

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/es;->a:Lcom/google/android/gms/internal/es;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/es;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/es;->c:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/es;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/es;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/es;->g:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/es;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/es;->h:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/es;->i:Ljava/lang/Long;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/es;-><init>()V

    return-void
.end method
