.class public abstract Lcom/google/android/gms/internal/js;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/js$a;
    }
.end annotation


# instance fields
.field protected final c:Lcom/google/android/gms/internal/js$a;

.field protected final d:Lcom/google/android/gms/internal/jt;

.field protected final e:Lcom/google/android/gms/internal/iu;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/js$a;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/js;->c:Lcom/google/android/gms/internal/js$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/js;->d:Lcom/google/android/gms/internal/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/js;->e:Lcom/google/android/gms/internal/iu;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/iu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/js;->e:Lcom/google/android/gms/internal/iu;

    return-object v0
.end method

.method public abstract a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/js;
.end method

.method public final b()Lcom/google/android/gms/internal/jt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/js;->d:Lcom/google/android/gms/internal/jt;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/js$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/js;->c:Lcom/google/android/gms/internal/js$a;

    return-object v0
.end method
