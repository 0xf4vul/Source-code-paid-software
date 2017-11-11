.class public final Lcom/google/android/gms/internal/aaw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aaw$a;,
        Lcom/google/android/gms/internal/aaw$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/eo$a;

.field public final c:Lcom/google/android/gms/internal/afg;

.field public d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/afg;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aaw;->d:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/aaw;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/aaw;->b:Lcom/google/android/gms/internal/eo$a;

    iput-object p1, p0, Lcom/google/android/gms/internal/aaw;->c:Lcom/google/android/gms/internal/afg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/eo$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/eo$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aaw;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aaw;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/aaw;->b:Lcom/google/android/gms/internal/eo$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aaw;->c:Lcom/google/android/gms/internal/afg;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/internal/eo$a;)Lcom/google/android/gms/internal/aaw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/eo$a;",
            ")",
            "Lcom/google/android/gms/internal/aaw",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aaw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/aaw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/eo$a;)V

    return-object v0
.end method
