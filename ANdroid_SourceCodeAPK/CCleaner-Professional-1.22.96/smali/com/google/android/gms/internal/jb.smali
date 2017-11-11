.class public final Lcom/google/android/gms/internal/jb;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/android/gms/internal/ls;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/ls;

    return-void
.end method
