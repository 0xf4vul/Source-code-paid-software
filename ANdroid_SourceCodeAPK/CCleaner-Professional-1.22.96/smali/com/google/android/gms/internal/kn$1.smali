.class final Lcom/google/android/gms/internal/kn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/kk;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/kn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/kn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/kn$1;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/kn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kn$1;->b:Lcom/google/android/gms/internal/kn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/kk;

    check-cast p2, Lcom/google/android/gms/internal/kk;

    .line 1000
    sget-boolean v0, Lcom/google/android/gms/internal/kn$1;->a:Z

    if-nez v0, :cond_1

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    .line 1000
    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, p2, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    .line 1000
    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/lr;

    .line 4000
    iget-object v1, p1, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    .line 5000
    iget-object v2, p1, Lcom/google/android/gms/internal/kk;->b:Lcom/google/android/gms/internal/lm;

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    new-instance v1, Lcom/google/android/gms/internal/lr;

    .line 7000
    iget-object v2, p2, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    .line 8000
    iget-object v3, p2, Lcom/google/android/gms/internal/kk;->b:Lcom/google/android/gms/internal/lm;

    .line 9000
    iget-object v3, v3, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/kn$1;->b:Lcom/google/android/gms/internal/kn;

    invoke-static {v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/ll;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ll;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 0
    return v0
.end method
