.class public final Lcom/google/android/gms/internal/abb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/google/android/gms/internal/aee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/aee",
            "<",
            "Lcom/google/android/gms/internal/abe;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/google/android/gms/internal/xh$c;

.field public final f:Lcom/google/android/gms/internal/wb;

.field public final g:Lcom/google/android/gms/internal/wb;

.field public final h:Lcom/google/android/gms/internal/wb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abb;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/aee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aee;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abb;->d:Lcom/google/android/gms/internal/aee;

    new-instance v0, Lcom/google/android/gms/internal/abb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/abb$1;-><init>(Lcom/google/android/gms/internal/abb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/abb;->f:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/abb$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/abb$2;-><init>(Lcom/google/android/gms/internal/abb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/abb;->g:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/abb$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/abb$3;-><init>(Lcom/google/android/gms/internal/abb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/abb;->h:Lcom/google/android/gms/internal/wb;

    iput-object p2, p0, Lcom/google/android/gms/internal/abb;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/abb;->b:Ljava/lang/String;

    return-void
.end method
