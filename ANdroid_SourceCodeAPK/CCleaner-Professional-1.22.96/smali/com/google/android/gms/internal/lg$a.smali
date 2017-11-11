.class public abstract Lcom/google/android/gms/internal/lg$a;
.super Lcom/google/android/gms/internal/hq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hq$b",
        "<",
        "Lcom/google/android/gms/internal/lf;",
        "Lcom/google/android/gms/internal/ls;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/hq$b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lf;

    check-cast p2, Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/lg$a;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    .line 0
    return-void
.end method
